using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Windows.Forms;

namespace XCore
{
	/// <summary>
	/// Summary description for PaneBar.
	/// </summary>
	public class PaneBar : System.Windows.Forms.UserControl, IPaneBar
	{
		private System.Windows.Forms.Label label1;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		/// <summary>
		///
		/// </summary>
		public PaneBar()
		{
			// This call is required by the Windows.Forms Form Designer.
			InitializeComponent();

			// TODO: Add any initialization after the InitializeComponent call

		}

		/// <summary>
		///
		/// </summary>
		public void RefreshPane()
		{

		}

		/// <summary>
		///
		/// </summary>
		/// <param name="smallImages"></param>
		/// <param name="mediator"></param>
		/// <returns></returns>
		public void  Init (SIL.Utils.ImageCollection smallImages,  IUIMenuAdapter menuBarAdapter, Mediator mediator)
		{
		}

		/// <summary>
		///
		/// </summary>
		/// <param name="group"></param>
		public void  AddGroup(XCore.ChoiceGroup group)
		{
		}


		public override string Text
		{
			set
			{
				label1.Text = value;
			}
		}
		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		protected override void Dispose(bool disposing)
		{
			System.Diagnostics.Debug.WriteLineIf(!disposing, "****** Missing Dispose() call for " + GetType().Name + ". ****** ");
			if( disposing )
			{
				if(components != null)
				{
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Component Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.label1 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			//
			// label1
			//
			this.label1.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label1.Location = new System.Drawing.Point(0, 0);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(344, 24);
			this.label1.TabIndex = 0;
			this.label1.Text = "label1";
			//
			// PaneBar
			//
			this.Controls.Add(this.label1);
			this.Name = "PaneBar";
			this.Size = new System.Drawing.Size(656, 24);
			this.ResumeLayout(false);

		}
		#endregion
	}
}
