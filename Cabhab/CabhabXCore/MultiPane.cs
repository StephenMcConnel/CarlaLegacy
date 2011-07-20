using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Data;
using System.Windows.Forms;
using System.Xml;

using SIL.Utils;

namespace XCore
{
	/// <summary>
	/// A MultiPane (actually currently more a DualPane) displays two child controls,
	/// either side by side or one above the other, with a splitter between them.
	///
	/// It is normally created using XML like this:
	///			<control assemblyPath="xCore.dll" class="XCore.MultiPane">
	///				<parameters area="lexicon" id="LexEntryAndEditor" vertical="true">
	///					<control .../>
	///					<control .../>
	///				</parameters>
	///			</control>
	///
	/// The vertical parameter causes the two controls to be one above the other, if true,
	/// or side by side, if false. (Default, if omitted, is true.)
	/// The id parameter gives the MultiPane a name (which should be unique across the whole
	/// containing application) to use in storing state, such as the position of the splitter,
	/// persistently.
	/// It is mandatory to specify the area that the control is part of, but I (JT) don't know why.
	///
	/// If the mediator has a property called id_ShowFirstPane (e.g., LexEntryAndEditor_ShowFirstPane),
	/// it will control the visibility of the first pane (visible if the property is true).
	/// </summary>
	/// <remarks>
	/// IxCoreContentControl includes IxCoreColleague now,
	/// so only IxCoreContentControl needs to be declared here.
	/// </remarks>
	public class MultiPane : CollapsingSplitContainer, IxCoreContentControl, IXCoreUserControl
	{
		public event EventHandler ShowFirstPaneChanged;

		// When its superclass gets switched to the new SplitContainer class. it has to implement IXCoreUserControl itself.
		private System.ComponentModel.IContainer components;
		private Mediator m_mediator;
		private bool m_prioritySecond; // true to give second pane first chance at broadcast messages.
		private System.Drawing.Size m_parentSizeHint;
		private bool m_showingFirstPane;
		private string m_propertyControllingVisibilityOfFirstPane;
		// true to suppress collapsing fill pane below minimum
		// It doesn't go on the superclass,
		// because we will use its builtin Panel2MinSize property to actually control this,
		// and rumor has it that the min can't be known for some controls, until after a layout.
		// So, we have to 'remember' what to do in this data member.
		// Technically, we could just look it up in the config file,
		// but this will be faster.
//		private bool m_fDontCollapseFillPane = false;
		private string m_defaultPrintPaneId = "";
		private string m_defaultFocusControl = "";
		private XmlNode m_configurationParameters;

		public MultiPane()
		{
			ResetSplitterEventHandler(false); // Get rid of the handler until we have a parent.

			m_parentSizeHint.Width = m_parentSizeHint.Height = 0;

			// This call is required by the Windows.Forms Form Designer.
			InitializeComponent();
		}

		public string PrintPane
		{
			get
			{
				CheckDisposed();
				return m_defaultPrintPaneId;
			}
		}

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			//Debug.WriteLineIf(!disposing, "****************** " + GetType().Name + " 'disposing' is false. ******************");
			// Must not be run more than once.
			if (IsDisposed)
				return;
			if (disposing)
			{
				if (m_mediator != null)
					m_mediator.RemoveColleague(this);
				if(components != null)
					components.Dispose();
			}
			m_mediator = null;

			base.Dispose(disposing);
		}

		#region Component Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.components = new System.ComponentModel.Container();
//			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(MultiPane));
			//
			// MultiPane
			//
			this.Name = "MultiPane";

		}
		#endregion

		#region IXCoreUserControl implementation

		/// <summary>
		/// This is the property that return the name to be used by the accessibility object.
		/// </summary>
		public string AccName
		{
			get
			{
				CheckDisposed();

				string defaultName = "MultiPane";
				string name;
				if (this is IxCoreColleague)
				{
					name = XmlUtils.GetOptionalAttributeValue(m_configurationParameters, "persistContext");

					if (name == null || name == "")
						name = XmlUtils.GetOptionalAttributeValue(m_configurationParameters, "id");

					if (name == null || name == "")
						name = XmlUtils.GetOptionalAttributeValue(m_configurationParameters, "label", defaultName);
				}
				else
					name = defaultName;

				return name;
			}
		}

		#endregion IXCoreUserControl implementation

		#region IxCoreContentControl implementation

		public bool PrepareToGoAway()
		{
			CheckDisposed();

			//we are ready to go away if our two controls are ready to go away
			bool firstControlReady = true;
			if (FirstControl != null)
				firstControlReady = ((IxCoreContentControl)FirstControl).PrepareToGoAway();
			bool secondControlReady = true;
			if (SecondControl != null)
				secondControlReady = ((IxCoreContentControl)SecondControl).PrepareToGoAway();

			return firstControlReady && secondControlReady;
		}

		public string AreaName
		{
			get
			{
				CheckDisposed();

				return XmlUtils.GetManditoryAttributeValue( m_configurationParameters, "area");
			}
		}

		#endregion // IxCoreContentControl implementation

		#region IxCoreCtrlTabProvider implementation

		public Control PopulateCtrlTabTargetCandidateList(List<Control> targetCandidates)
		{
			if (targetCandidates == null)
				throw new ArgumentNullException("'targetCandidates' is null.");

			int sizeOfSharedDimensionPanel1 = Orientation == Orientation.Vertical ? Panel1.Width : Panel1.Height;
			Control result = null;
			if (sizeOfSharedDimensionPanel1 != CollapsingSplitContainer.kCollapsedSize && !Panel1Collapsed)
			{
				// Panel1 is visible and wide.
				result = (FirstControl as IxCoreCtrlTabProvider).PopulateCtrlTabTargetCandidateList(targetCandidates);
				if (!FirstControl.ContainsFocus)
					result = null;
			}
			int sizeOfSharedDimensionPanel2 = Orientation == Orientation.Vertical ? Panel2.Width : Panel2.Height;
			if (sizeOfSharedDimensionPanel2 != CollapsingSplitContainer.kCollapsedSize && !Panel2Collapsed)
			{
				// Panel2 is visible and wide.
				Control otherResult = (SecondControl as IxCoreCtrlTabProvider).PopulateCtrlTabTargetCandidateList(targetCandidates);
				if (SecondControl.ContainsFocus)
				{
					Debug.Assert(result == null, "result is unexpectedly not null.");
					Debug.Assert(otherResult != null, "otherResult is unexpectedly null.");
					result = otherResult;
				}
			}

			return result;
		}

		#endregion  IxCoreCtrlTabProvider implementation

		#region IxCoreColleague implementation
		/// <summary>
		/// Initialize this has an IxCoreColleague
		/// </summary>
		public void Init(Mediator mediator, XmlNode configurationParameters)
		{
			CheckDisposed();

			this.SuspendLayout();
			Panel1.SuspendLayout();
			Panel2.SuspendLayout();
			this.IsInitializing = true;

			m_configurationParameters = configurationParameters;
			m_mediator = mediator;

//			m_fDontCollapseFillPane = XmlUtils.GetOptionalBooleanAttributeValue(
//				m_configurationParameters, "dontCollapseFillPane", false);

			XmlNodeList nodes = configurationParameters.SelectNodes("control");
			if (nodes.Count != 2)
				throw new ConfigurationException(
					"Was expecting 2 controls to be defined in the parameters of the Multipane.",
					configurationParameters);

			string id = XmlUtils.GetAttributeValue(configurationParameters, "id", "");
			m_propertyControllingVisibilityOfFirstPane = GetPropertyControllingVisibilityOfFirstPane(nodes[0]);
			if (m_propertyControllingVisibilityOfFirstPane == null)
			{
				m_showingFirstPane = false;
			}
			else
			{
				m_showingFirstPane = true; // default
				// NOTE: we don't actually want to create and persist this property if it's not already loaded.
				object propertyValue;
				if (mediator.PropertyTable.PropertyExists(m_propertyControllingVisibilityOfFirstPane, out propertyValue, PropertyTable.SettingsGroup.LocalSettings))
				{
					m_showingFirstPane = (bool)propertyValue;
				}
			}

			SplitterWidth = 5;
			if (id != "") //must have an id if we're going to persist the value of the splitter
				this.Name = id;//for debugging
			FirstLabel = XmlUtils.GetOptionalAttributeValue(configurationParameters, "firstLabel", "");
			SecondLabel = XmlUtils.GetOptionalAttributeValue(configurationParameters, "secondLabel", "");
			SetFirstCollapseZone(nodes[0]);
			SetSecondCollapseZone(nodes[1]);

			string orientation = XmlUtils.GetOptionalAttributeValue(configurationParameters, "splitterBarOrientation", "vertical");
			if (orientation.ToLowerInvariant() == "horizontal" && Orientation != Orientation.Horizontal)
				Orientation = Orientation.Horizontal;
			else if (Orientation != Orientation.Vertical)
				Orientation = Orientation.Vertical;

			m_prioritySecond = XmlUtils.GetOptionalBooleanAttributeValue(configurationParameters,
				"prioritySecond", false);
			string defaultPrintPaneId = XmlUtils.GetOptionalAttributeValue(configurationParameters,
				"defaultPrintPane", "");
			string defaultFocusControl = XmlUtils.GetOptionalAttributeValue(configurationParameters,
				"defaultFocusControl", "");
			// If we are a subcontrol of a MultiPane, our DefaultPrintPane property may already be set.
			// we don't want to change it, unless it's not an empty string.
			if (!String.IsNullOrEmpty(defaultPrintPaneId))
				m_defaultPrintPaneId = defaultPrintPaneId;
			if (!String.IsNullOrEmpty(defaultFocusControl))
				m_defaultFocusControl = defaultFocusControl;
			MakeSubControl(nodes[0], Size, true);
			Panel1Collapsed = !m_showingFirstPane;
			MakeSubControl(nodes[1], Size, false);

			//if (m_fDontCollapseFillPane)
			//{
			//    // As of this writing (6 Feb 2007) only two tools (Texts:Edit & Texts:Document)
			//    // used this m_fDontCollapseFillPane feature.
			//    // They had the same fixed size on that date, so no prior layout was needed to get the size.
			//    // We can, then, safely set the Panel2MinSize right now to that known size.
			//    // At some point in the future, some tool may use the 'dontCollapseFillPane'
			//    // to surpress shrinking to the icon,
			//    // which does not know its minimum size before a layout.
			//    // When that happens, we will need to revisit setting it here.
			//    if (Panel2MinSize < 100)
			//        Panel2MinSize = 100;
			//}

			// Need to focus proper child control.
			if (!TrySetFocusInControl(FirstControl, m_defaultFocusControl))
				TrySetFocusInControl(SecondControl, m_defaultFocusControl);

			//if (Parent != null)
			//{
			//    // Set default width of Panel1, since it wasn't done when the parent was set.
			//    // This happens when the XWindow is in charge of this MultiPane,
			//    // when loading either of the Text tools (as of 6 Feb 2007).
			//    SetSplitterDistance();
			//}

			this.IsInitializing = false;
			Panel2.ResumeLayout(false);
			Panel1.ResumeLayout(false);
			this.ResumeLayout(false);

			//it's important to do this last, so that we don't go generating property change
			//notifications that we then go trying to cope with before we are ready
			mediator.AddColleague(this);
			m_fOkToPersistSplit = true;
		}

		private string GetPropertyControllingVisibilityOfFirstPane(XmlNode configurationNodeOfFirstPane)
		{
			XmlNode parameters = configurationNodeOfFirstPane.SelectSingleNode("parameters");
			if (parameters == null)
				return null;
			string property =  XmlUtils.GetOptionalAttributeValue(parameters,"id", null);
			if(property == null)
				return null;
			return property.Insert(0,"Show_");
		}

		/// <summary>
		/// Used to give us an idea of what our boundaries will be before we are initialized
		/// enough to determine them ourselves.
		/// </summary>
		/// <remarks> at the moment, the top-level multipane is able to figure out its eventual
		/// size without help from this. However, multipanes inside of other ones rely on this.
		/// </remarks>
		internal Size ParentSizeHint
		{
			get { return m_parentSizeHint; }
			set { m_parentSizeHint = value; }
		}

		/// <summary>
		/// </summary>
		internal String DefaultPrintPaneId
		{
			get { return m_defaultPrintPaneId; }
			set { m_defaultPrintPaneId = value; }
		}

		/// <summary>
		/// Size is overridden so that until the pane is sized properly,
		/// typically docked in some parent, it will be big enough not to interfere with
		/// the splitter position set in its Init method.
		/// </summary>
		protected override Size DefaultSize
		{
			get
			{
				return new Size(2000,2000);
			}
		}

		private void MakeSubControl(XmlNode configuration, Size parentSizeHint, bool isFirst)
		{
			XmlNode dynLoaderNode = configuration.SelectSingleNode("dynamicloaderinfo");
			if (dynLoaderNode == null)
				throw new ArgumentException("Required 'dynamicloaderinfo' XML node not found, while trying to make control for MultiPane.", "configuration");

			string contentAssemblyPath = XmlUtils.GetManditoryAttributeValue(dynLoaderNode, "assemblyPath");
			string contentClass = XmlUtils.GetManditoryAttributeValue(dynLoaderNode, "class");
			try
			{
				Control subControl = (Control)DynamicLoader.CreateObject(contentAssemblyPath, contentClass);
				if (subControl.AccessibleName == null)
					subControl.AccessibleName = contentClass;
				if (!(subControl is IxCoreColleague))
				{
					throw new ApplicationException(
						"XCore can only handle controls which implement IxCoreColleague. " +
						contentClass + " does not.");
				}
				if (!(subControl is IXCoreUserControl))
				{
					throw new ApplicationException(
						"XCore can only handle controls which implement IXCoreUserControl. " +
						contentClass + " does not.");
				}

				subControl.SuspendLayout();

				subControl.Dock = DockStyle.Fill;

				// we add this before Initializing so that this child control will have access
				// to its eventual height and width, in case it needs to make initialization
				// decisions based on that.  for example, if the child is another multipane, it
				// will use this to come up with a reasonable default location for its splitter.
				if (subControl is MultiPane)
				{
					MultiPane mpSubControl = subControl as MultiPane;
					mpSubControl.ParentSizeHint = parentSizeHint;
					// cause our subcontrol to inherit our DefaultPrintPane property.
					mpSubControl.DefaultPrintPaneId = m_defaultPrintPaneId;
				}
				// we add this before Initializing so that this child control will have access
				// to its eventual height and width, in case it needs to make initialization
				// decisions based on that.  for example, if the child is another multipane, it
				// will use this to come up with a reasonable default location for its splitter.
				if (subControl is PaneBarContainer)
				{
					PaneBarContainer mpSubControl = subControl as PaneBarContainer;
					mpSubControl.ParentSizeHint = parentSizeHint;
					// cause our subcontrol to inherit our DefaultPrintPane property.
					mpSubControl.DefaultPrintPaneId = m_defaultPrintPaneId;
				}

				XmlNode parameters = null;
				if (configuration != null)
					parameters = configuration.SelectSingleNode("parameters");
				((IxCoreColleague)subControl).Init(m_mediator, parameters);

				// in normal situations, colleagues add themselves to the mediator when
				// initialized.  in this case, we don't want this colleague to add itself
				// because we want it to be subservient to this "papa" control.  however, since
				// this control is only experimental, I'm loathe to change the interfaces in
				// such a way as to tell a colleague that it should not add itself to the
				// mediator.  so, for now, we will just do this hack and remove the colleague
				// from the mediator.
				m_mediator.RemoveColleague((IxCoreColleague)subControl);

				if (isFirst)
				{
					subControl.AccessibleName += ".First";
					FirstControl = subControl;
				}
				else
				{
					subControl.AccessibleName += ".Second";
					SecondControl = subControl;
				}
				subControl.ResumeLayout(false);
			}
			catch (Exception error)
			{
				string s = "Something went wrong trying to create a " + contentClass + ".";
				XWindow window = (XWindow)m_mediator.PropertyTable.GetValue("window");
				ErrorReporter.ReportException(new ApplicationException(s, error),
					window.ApplicationRegistryKey, m_mediator.FeedbackInfoProvider.SupportEmailAddress);
			}
		}

		private MultiPane GetRootMultiPane(Control c)
		{
			if (c == null)
				return null;
			if (c is MultiPane && (c.Parent == null || c.Parent is SplitterPanel))
				return c as MultiPane;
			return GetRootMultiPane(c.Parent);
		}

		private bool TrySetFocusInControl(Control parentControl, string nameOfChildToFocus)
		{
			// Search parent pane context to determine whether we should give focus to this control.
			Control focusControl = parentControl; // if we haven't specified a control to give focus, by default give it focus.
			focusControl = XWindow.FindControl(parentControl, nameOfChildToFocus);
			if (focusControl != null)
				focusControl.Focus();
			return focusControl != null && focusControl.ContainsFocus;
		}

		/// <summary>
		/// return an array of all of the objects which should
		/// 1) be queried when looking for someone to deliver a message to
		/// 2) be potential recipients of a broadcast
		/// </summary>
		/// <returns></returns>
		public IxCoreColleague[] GetMessageTargets()
		{
			CheckDisposed();

			Control first = FirstControl;
			if (first != null && first.FindForm() == null)
				first = null;
			Control second = SecondControl;
			if (second != null && second.FindForm() == null)
				second = null;

			List<IxCoreColleague> targets = new List<IxCoreColleague>();
			targets.Add(this);

			if (m_prioritySecond)
			{
				if (first != null)
					targets.Insert(0, first as IxCoreColleague);
				if (second != null)
					targets.Insert(0, second as IxCoreColleague);
			}
			else
			{
				if (second != null)
					targets.Insert(0, second as IxCoreColleague);
				if (first != null)
					targets.Insert(0, first as IxCoreColleague);
			}

			return targets.ToArray();
		}

		/// <summary>
		/// Should not be called if disposed.
		/// </summary>
		public bool ShouldNotCall
		{
			get { return IsDisposed; }
		}

		#endregion // IxCoreColleague implementation

		//protected override void OnParentChanged(EventArgs e)
		//{
		//    base.OnParentChanged(e);

		//    Control parent = Parent;
		//    if (parent != null && m_mediator != null)
		//    {
		//        ResetSplitterEventHandler(true);
		//        // Not sure why we were setting this pane's size to the size of its parent.
		//        // This caused a problem where if this pane were contained inside a container
		//        // that contained other components, then the size of this pane would be too
		//        // big. We go ahead and let the parent handle sizing of this pane. If there
		//        // is a good reason for doing this, then we need to come up with another way
		//        // of fixing this. see LT-8023
		//        //Size = parent.Size;
		//        SetSplitterDistance();
		//    }
		//}

		protected override void OnSizeChanged(EventArgs e)
		{
			base.OnSizeChanged(e);

			Control parent = Parent;
			if (parent != null && m_mediator != null)
			{
				ResetSplitterEventHandler(true);
				SetSplitterDistance();
			}
		}

		private string SplitterDistancePropertyName
		{
			get
			{
				return String.Format("MultiPaneSplitterDistance_{0}_{1}_{2}",
					m_configurationParameters.Attributes["area"].Value,
					m_mediator.PropertyTable.GetStringProperty("currentContentControl", ""),
					m_configurationParameters.Attributes["id"].Value);
			}
		}

		// Set to true when sufficiently initialized that it makes sense to persist changes to split position.
		private bool m_fOkToPersistSplit = false;

		protected override void OnSplitterMoved(object sender, SplitterEventArgs e)
		{
			if (InSplitterMovedMethod)
				return;

			base.OnSplitterMoved(sender, e);

			// Persist new position.
			if (m_mediator != null && m_fOkToPersistSplit)
				m_mediator.PropertyTable.SetProperty(SplitterDistancePropertyName, SplitterDistance, false);
		}

		private void SetSplitterDistance()
		{
			int sizeOfSharedDimension = Orientation == Orientation.Vertical ? Width : Height;
			// If the default size is specified in the XML file, use that,
			// otherwise compute something reasonable.
			string defaultLoc = XmlUtils.GetOptionalAttributeValue(m_configurationParameters,
				"defaultFixedPaneSizePoints",
				"50%");
			int defaultLocation;

			// Find 'total', which will be the height or width,
			// depending on the orientation of the multi pane.
			bool proportional = defaultLoc.EndsWith("%");
			int total;
			Size size = Size;
			if (m_parentSizeHint.Width != 0 && !proportional)
				size = m_parentSizeHint;
			if (Orientation == Orientation.Vertical)
				total = size.Width;
			else
				total = size.Height;

			if (proportional)
			{
				string percentStr = defaultLoc.Substring(0, defaultLoc.Length - 1);
				int percent = Int32.Parse(percentStr);
				float loc = (total * (((float)percent) / 100));
				double locD = Math.Round(loc);
				defaultLocation = (int)locD;
			}
			else
			{
				defaultLocation = Int32.Parse(defaultLoc);
			}

			if (m_mediator != null)
			{
				// NB GetIntProperty RECORDS the default as if it had really been set by the user.
				// This behavior is disastrous here, where if we haven't truly persisted something,
				// we want to stick to computing the percent whenever the parent resizes.
				// So, first see whether there is a value in the property table at all.
				if (m_mediator.PropertyTable.GetValue(SplitterDistancePropertyName) != null)
					defaultLocation = m_mediator.PropertyTable.GetIntProperty(SplitterDistancePropertyName, defaultLocation);
			}
			if (defaultLocation < CollapsingSplitContainer.kCollapsedSize)
				defaultLocation = CollapsingSplitContainer.kCollapsedSize;

			if (SplitterDistance != defaultLocation)
			{
				int originalSD = SplitterDistance;
				try
				{
					// Msg: SplitterDistance (aka: defaultLocation) must be between Panel1MinSize and Width - Panel2MinSize.
					if (defaultLocation >= Panel1MinSize && defaultLocation <= (sizeOfSharedDimension - Panel2MinSize))
					{
						// We do NOT want to persist this computed position!
						bool old = m_fOkToPersistSplit;
						m_fOkToPersistSplit = false;
						SplitterDistance = defaultLocation;
						m_fOkToPersistSplit = old;
					}
				}
				catch (Exception err)
				{
					Debug.WriteLine(err.Message);
					string msg = string.Format("Orientation: {0} Width: {1} Height: {2} Original SD: {3} New SD: {4} Panel1MinSize: {5} Panel2MinSize: {6} ID: {7} Panel1Collapsed: {8} Panel2Collapsed: {9}",
						Orientation.ToString(), Width, Height, originalSD, defaultLocation,
						Panel1MinSize, Panel2MinSize,
						XmlUtils.GetAttributeValue(m_configurationParameters, "id", "NOID"),
						Panel1Collapsed, Panel2Collapsed);
					throw new ArgumentOutOfRangeException(msg, err);
				}
			}
		}

		/// summary>
		/// Receives the broadcast message "PropertyChanged." If it is the ShowFirstPane
		/// property, adjust.
		/// /summary>
		public void OnPropertyChanged(string name)
		{
			CheckDisposed();

			if (name != m_propertyControllingVisibilityOfFirstPane)
				return;

			bool fShowFirstPane = m_mediator.PropertyTable.GetBoolProperty(m_propertyControllingVisibilityOfFirstPane, true);
			if (fShowFirstPane == m_showingFirstPane)
				return; // just in case it didn't really change

			m_showingFirstPane = fShowFirstPane;

			Panel1Collapsed = !fShowFirstPane;

			if (ShowFirstPaneChanged != null)
				ShowFirstPaneChanged(this, new EventArgs());
		}
	}
}
