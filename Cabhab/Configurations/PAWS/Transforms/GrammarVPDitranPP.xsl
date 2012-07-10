<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="vpditranpp">

	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6a - V initial, ditransitive with PP (accusative object)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6a
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6aNegObjVerbRequired - V initial, ditransitive with PP (accusative object)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6aNegObjVerbRequired
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6b - V initial, ditransitive with PP (absolutive object)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6b
</xsl:text>
</xsl:if>

















































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6bNegObjVerbRequired - V initial, ditransitive with PP (absolutive object)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6bNegObjVerbRequired
</xsl:text>
</xsl:if>

















































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6c - V final, ditransitive with PP (accusative object)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6c
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cNegObjVerbRequired - V final, ditransitive with PP (accusative object)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6cNegObjVerbRequired
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cQSubj - V final, ditransitive with PP (accusative case object), subject questioned}
VP = PP DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;DP_1 head case&gt; = nominative
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
		{&lt;DP head type reflexive&gt; = -
		/&lt;DP head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animacy&gt; = &lt;DP head agr animacy&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP option&gt; = 6cQSubj
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cQSubjNegObjVerbRequired - V final, ditransitive with PP (accusative case object), subject questioned}
VP = PP DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;DP_1 head case&gt; = nominative
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
			{&lt;DP head type reflexive&gt; = -
			/&lt;DP head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animacy&gt; = &lt;DP head agr animacy&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6cQSubjNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cQAdvP - V final, ditransitive with PP (accusative case object), AdvP questioned}
VP = PP DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6cQAdvP
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cQAdvPNegObjVerbRequired - V final, ditransitive with PP (accusative case object), AdvP questioned}
VP = PP DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6cQAdvPNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6d - V final, ditransitive with PP (absolutive object)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6d
</xsl:text>
</xsl:if>

















































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dNegObjVerbRequired - V final, ditransitive with PP (absolutive object)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6dNegObjVerbRequired
</xsl:text>
</xsl:if>

















































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dQSubj - V final, ditransitive with PP (absolutive case object), subject questioned}
VP = PP DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
			{&lt;DP head type reflexive&gt; = -
			/&lt;DP head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animacy&gt; = &lt;DP head agr animacy&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP option&gt; = 6dQSubj
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dQSubjNegObjVerbRequired - V final, ditransitive with PP (absolutive case object), subject questioned}
VP = PP DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
			{&lt;DP head type reflexive&gt; = -
			/&lt;DP head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animacy&gt; = &lt;DP head agr animacy&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6dQSubjNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dQAdvP - V final, ditransitive with PP (absolutive case object), AdvP questioned}
VP = PP DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6dQAdvP
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dQAdvPNegObjVerbRequired - V final, ditransitive with PP (absolutive case object), AdvP questioned}
VP = PP DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6dQAdvPNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6aqpp - V initial, ditransitive with PP questioned (accusative object)}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	&lt;DP head case&gt; =  accusative
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP option&gt; = 6aqpp
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6aqppNegObjVerbRequired - V initial, ditransitive with PP questioned (accusative object)}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	&lt;DP head case&gt; =  accusative
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6aqppNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6bqpp - V initial, ditransitive with PP questioned (absolutive object)}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	&lt;DP head case&gt; =  absolutive
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP option&gt; = 6bqpp
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6bqppNegObjVerbRequired - V initial, ditransitive with PP questioned (absolutive object)}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	&lt;DP head case&gt; =  absolutive
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6bqppNegObjVerbRequired
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cqpp - V final, ditransitive with PP questioned (accusative object)}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	&lt;DP head case&gt; =  accusative
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 6cqpp
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cqppNegObjVerbRequired - V final, ditransitive with PP questioned (accusative object)}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	&lt;DP head case&gt; =  accusative
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6cqppNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cqppSOV - SOV, ditransitive with PP questioned (accusative object)}
VP = DP PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;PP head type wh&gt; = +
	&lt;DP head case&gt; =  accusative
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 6cqppSOV
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6cqppSOVNegObjVerbRequired - SOV, ditransitive with PP questioned (accusative object)}
VP = DP PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;PP head type wh&gt; = +
	&lt;DP head case&gt; =  accusative
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6cqppSOVNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dqpp - V final, ditransitive with PP questioned (absolutive object)}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	&lt;DP head case&gt; =  absolutive
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 6dqpp
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dqppNegObjVerbRequired - V final, ditransitive with PP questioned (absolutive object)}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	&lt;DP head case&gt; =  absolutive
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6dqppNegObjVerbRequired
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dqppSOV - SOV, ditransitive with PP questioned (absolutive object)}
VP = DP PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;PP head type wh&gt; = +
	&lt;DP head case&gt; =  absolutive
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 6dqppSOV
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6dqppSOVNegObjVerbRequired - SOV, ditransitive with PP questioned (absolutive object)}
VP = DP PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;PP head type wh&gt; = +
	&lt;DP head case&gt; =  absolutive
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6dqppSOVNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6e - VSO order, ditransitive with PP (accusative object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6e
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6eNegSubjVerbRequired - VSO order, ditransitive with PP (accusative object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6eNegObjVerbRequired - VSO order, ditransitive with PP (accusative object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6eNegSubjorObjVerbRequired - VSO order, ditransitive with PP (accusative object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6ei - VSO order, ditransitive with PP (accusative case object), imperative}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6ei
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6eiNegObjVerbRequired - VSO order, ditransitive with PP (accusative case object), imperative}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eiNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6ep - VSO order, ditransitive with PP (accusative object), pro-drop}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6ep
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6epNegObjVerbRequired - VSO order, ditransitive with PP (accusative object), pro-drop}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6epNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6f - VSO order, ditransitive with PP (absolutive object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6f
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6fNegSubjVerbRequired - VSO order, ditransitive with PP (absolutive object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fNegSubjVerbRequired
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6fNegObjVerbRequired - VSO order, ditransitive with PP (absolutive object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6fNegSubjorObjVerbRequired - VSO order, ditransitive with PP (absolutive object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6fi - VSO order, ditransitive with PP (absolutive case object), imperative}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fi
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6fiNegObjVerbRequired - VSO order, ditransitive with PP (absolutive case object), imperative}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fiNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6fp - VSO order, ditransitive with PP (absolutive object), pro-drop}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fp
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6fpNegObjVerbRequired - VSO order, ditransitive with PP (absolutive object), pro-drop}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fpNegObjVerbRequired
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6g - OSV order, ditransitive with PP (accusative object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6g
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6gNegSubjVerbRequired - OSV order, ditransitive with PP (accusative object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gNegSubjVerbRequired
</xsl:text>
</xsl:if>





















	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6gNegObjVerbRequired - OSV order, ditransitive with PP (accusative object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6gNegSubjorObjVerbRequired - OSV order, ditransitive with PP (accusative object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6gi - OSV order, ditransitive with PP (accusative case object), imperative}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gi
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6giNegObjVerbRequired - OSV order, ditransitive with PP (accusative case object), imperative}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6giNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6gp - OSV order, ditransitive with PP (accusative object), pro-drop}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = +
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gp
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6gpNegObjVerbRequired - OSV order, ditransitive with PP (accusative object), pro-drop}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = +
	&lt;DP_1 head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gpNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6h - OSV order, ditransitive with PP (absolutive object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6h
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6hNegSubjVerbRequired - OSV order, ditransitive with PP (absolutive object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hNegSubjVerbRequired
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6hNegObjVerbRequired - OSV order, ditransitive with PP (absolutive object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
&lt;VP option&gt; = 6hNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6hNegSubjorObjVerbRequired - OSV order, ditransitive with PP (absolutive object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6hi - OSV order, ditransitive with PP (absolutive case object), imperative}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hi
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6hiNegObjVerbRequired - OSV order, ditransitive with PP (absolutive case object), imperative}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hiNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6hp - OSV order, ditransitive with PP (absolutive object), pro-drop}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                     [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hp
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6hpNegObjVerbRequired - OSV order, ditransitive with PP (absolutive object), pro-drop}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hpNegObjVerbRequired
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6i - V initial, ditransitive with PP, accusative object questioned}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6i
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6iFoc - V initial, ditransitive with PP, accusative object focused}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6iFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6iNegObjVerbRequired - V initial, ditransitive with PP, accusative object questioned}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6iNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6iNegObjVerbRequiredFoc - V initial, ditransitive with PP, accusative object focused}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6iNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6j - V initial, ditransitive with PP, absolutive object questioned}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6j
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6jFoc - V initial, ditransitive with PP, absolutive object focused}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6jFoc
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6jNegObjVerbRequired - V initial, ditransitive with PP, absolutive object questioned}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6jNegObjVerbRequired
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6jNegObjVerbRequiredFoc - V initial, ditransitive with PP, absolutive object focused}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6jNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6k - V final, ditransitive with PP, accusative object questioned}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6k
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6kFoc - V final, ditransitive with PP, accusative object focused}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6kFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6kNegObjVerbRequired - V final, ditransitive with PP, accusative object questioned}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6kNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6kNegObjVerbRequiredFoc - V final, ditransitive with PP, accusative object focused}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6kNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6l - V final, ditransitive with PP, absolutive object questioned}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6l
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6lFoc - V final, ditransitive with PP, absolutive object focused}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6lFoc
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6lNegObjVerbRequired - V final, ditransitive with PP, absolutive object questioned}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6lNegObjVerbRequired
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6lNegObjVerbRequiredFoc - V final, ditransitive with PP, absolutive object focused}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6lNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6m - VSO order, ditransitive with PP (accusative object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6m
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mFoc - VSO order, ditransitive with PP (accusative object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6mFoc
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mNegSubjVerbRequired - VSO order, ditransitive with PP (accusative object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mNegSubjVerbRequiredFoc - VSO order, ditransitive with PP (accusative object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegSubjVerbRequiredFoc
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mNegObjVerbRequired - VSO order, ditransitive with PP (accusative object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegObjVerbRequired
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mNegObjVerbRequiredFoc - VSO order, ditransitive with PP (accusative object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mNegSubjorObjVerbRequired - VSO order, ditransitive with PP (accusative object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mNegSubjorObjVerbRequiredFoc - VSO order, ditransitive with PP (accusative object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegSubjorObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mp - VSO order, ditransitive with PP (accusative object questioned), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6mp
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mpFoc - VSO order, ditransitive with PP (accusative object focused), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6mpFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mpNegObjVerbRequired - VSO order, ditransitive with PP (accusative object questioned), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mpNegObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6mpNegObjVerbRequiredFoc - VSO order, ditransitive with PP (accusative object focused), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mpNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6n - VSO order, ditransitive with PP (absolutive object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6n
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6nFoc - VSO order, ditransitive with PP (absolutive object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6nFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6nNegSubjVerbRequired - VSO order, ditransitive with PP (absolutive object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegSubjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6nNegSubjVerbRequiredFoc - VSO order, ditransitive with PP (absolutive object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegSubjVerbRequiredFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6nNegObjVerbRequired - VSO order, ditransitive with PP (absolutive object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6nNegObjVerbRequiredFoc - VSO order, ditransitive with PP (absolutive object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6nNegSubjorObjVerbRequired - VSO order, ditransitive with PP (absolutive object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6nNegSubjorObjVerbRequiredFoc - VSO order, ditransitive with PP (absolutive object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegSubjorObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6np - VSO order, ditransitive with PP (absolutive object questioned), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6np
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6npFoc - VSO order, ditransitive with PP (absolutive object focused), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6npFoc
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6npNegObjVerbRequired - VSO order, ditransitive with PP (absolutive object questioned), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6npNegObjVerbRequired
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6npNegObjVerbRequiredFoc - VSO order, ditransitive with PP (absolutive object focused), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6npNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6o - OSV order, ditransitive with PP (accusative object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6o
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6oFoc - OSV order, ditransitive with PP (accusative object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6oFoc
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6oNegSubjVerbRequired - OSV order, ditransitive with PP (accusative object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6oNegSubjVerbRequiredFoc - OSV order, ditransitive with PP (accusative object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegSubjVerbRequiredFoc
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6oNegObjVerbRequired - OSV order, ditransitive with PP (accusative object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegObjVerbRequired
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6oNegObjVerbRequiredFoc - OSV order, ditransitive with PP (accusative object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6oNegSubjorObjVerbRequired - OSV order, ditransitive with PP (accusative object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6oNegSubjorObjVerbRequiredFoc - OSV order, ditransitive with PP (accusative object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = nominative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegSubjorObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6op - OSV order, ditransitive with PP (accusative object questioned), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6op
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6opFoc - OSV order, ditransitive with PP (accusative object focused), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6opFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6opNegObjVerbRequired - OSV order, ditransitive with PP (accusative object questioned), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6opNegObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6opNegObjVerbRequiredFoc - OSV order, ditransitive with PP (accusative object focused), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = accusative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6opNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6p - OSV order, ditransitive with PP (absolutive object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6p
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6pFoc - OSV order, ditransitive with PP (absolutive object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6pFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6pNegSubjVerbRequired - OSV order, ditransitive with PP (absolutive object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegSubjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6pNegSubjVerbRequiredFoc - OSV order, ditransitive with PP (absolutive object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegSubjVerbRequiredFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6pNegObjVerbRequired - OSV order, ditransitive with PP (absolutive object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6pNegObjVerbRequiredFoc - OSV order, ditransitive with PP (absolutive object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6pNegSubjorObjVerbRequired - OSV order, ditransitive with PP (absolutive object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6pNegSubjorObjVerbRequiredFoc - OSV order, ditransitive with PP (absolutive object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;DP head case&gt; = ergative
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegSubjorObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6pp - OSV order, ditransitive with PP (absolutive object questioned), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6pp
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6ppFoc - OSV order, ditransitive with PP (absolutive object focused), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6ppFoc
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6ppNegObjVerbRequired - OSV order, ditransitive with PP (absolutive object questioned), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6ppNegObjVerbRequired
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6ppNegObjVerbRequiredFoc - OSV order, ditransitive with PP (absolutive object focused), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = absolutive
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6ppNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6q - VSO order, ditransitive with PP (acc object), subj questioned}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
		/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = nominative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6q
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6qFoc - VSO order, ditransitive with PP (acc object), subj focused}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
		/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = nominative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6qFoc
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6qNegObjVerbRequired - VSO order, ditransitive with PP (acc object), subj questioned}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
		/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = nominative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6qNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6qNegObjVerbRequiredFoc - VSO order, ditransitive with PP (acc object), subj focused}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
		/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = nominative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6qNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6r - VSO order, ditransitive with PP (abs object), subj questioned}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = ergative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6r
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6rFoc - VSO order, ditransitive with PP (abs object), subj focused}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = ergative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6rFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6rNegObjVerbRequired - VSO order, ditransitive with PP (abs object), subj questioned}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = ergative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6rNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6rNegObjVerbRequiredFoc - VSO order, ditransitive with PP (abs object), subj focused}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = ergative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6rNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6s - OSV order, ditransitive with PP (acc object), subj questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = nominative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6s
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6sFoc - OSV order, ditransitive with PP (acc object), subj focused}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = nominative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6sFoc
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6sNegObjVerbRequired - OSV order, ditransitive with PP (acc object), subj questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = nominative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6sNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6sNegObjVerbRequiredFoc - OSV order, ditransitive with PP (acc object), subj focused}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = accusative
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = nominative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6sNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6t - OSV order, ditransitive with PP (abs object), subj questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = ergative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6t
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6tFoc - OSV order, ditransitive with PP (abs object), subj focused}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = ergative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6tFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6tNegObjVerbRequired - OSV order, ditransitive with PP (abs object), subj questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = ergative
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6tNegObjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6tNegObjVerbRequiredFoc - OSV order, ditransitive with PP (abs object), subj focused}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head case&gt; = absolutive
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head case&gt; = ergative
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6tNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6u - VSO order, ditransitive with PP questioned (acc object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 6u
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6uNegSubjVerbRequired - VSO order, ditransitive with PP questioned (acc object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6uNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6uNegObjVerbRequired - VSO order, ditransitive with PP questioned (acc object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6uNegObjVerbRequired
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6uNegSubjorObjVerbRequired - VSO order, ditransitive with PP questioned (acc object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6uNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6up - VSO order, ditransitive with PP questioned (acc object), pro-drop}
VP = V DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 6up
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6upNegObjVerbRequired - VSO order, ditransitive with PP questioned (acc object), pro-drop}
VP = V DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6upNegObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6v - VSO order, ditransitive with PP questioned (abs object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 6v
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6vNegSubjVerbRequired - VSO order, ditransitive with PP questioned (abs object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6vNegSubjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6vNegObjVerbRequired - VSO order, ditransitive with PP questioned (abs object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6vNegObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6vNegSubjorObjVerbRequired - VSO order, ditransitive with PP questioned (abs object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6vNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6vp - VSO order, ditransitive with PP questioned (abs object), pro-drop}
VP = V DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 6vp
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6vpNegObjVerbRequired - VSO order, ditransitive with PP questioned (abs object), pro-drop}
VP = V DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6vpNegObjVerbRequired
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6w - OSV order, ditransitive with PP questioned (acc object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 6w
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6wNegSubjVerbRequired - OSV order, ditransitive with PP questioned (acc object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6wNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6wNegObjVerbRequired - OSV order, ditransitive with PP questioned (acc object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6wNegObjVerbRequired
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6wNegSubjorObjVerbRequired - OSV order, ditransitive with PP questioned (acc object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6wNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6wp - OSV order, ditransitive with PP questioned (acc object), pro-drop}
VP = DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 6wp
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6wpNegObjVerbRequired - OSV order, ditransitive with PP questioned (acc object), pro-drop}
VP = DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6wpNegObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6x - OSV order, ditransitive with PP questioned (abs object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 6x
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6xNegSubjVerbRequired - OSV order, ditransitive with PP questioned (abs object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6xNegSubjVerbRequired
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6xNegObjVerbRequired - OSV order, ditransitive with PP questioned (abs object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6xNegObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6xNegSubjorObjVerbRequired - OSV order, ditransitive with PP questioned (abs object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6xNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6xp - OSV order, ditransitive with PP questioned (abs object), pro-drop}
VP = DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 6xp
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voice)='no'">
<xsl:text>
rule {VP option 6xpNegObjVerbRequired - OSV order, ditransitive with PP questioned (abs object), pro-drop}
VP = DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6xpNegObjVerbRequired
</xsl:text>
</xsl:if>



















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6aVNom - V initial, ditransitive with PP}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6aVNom
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6aNegObjVerbRequiredVNom - V initial, ditransitive with PP}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6aNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6bVAbs - V initial, ditransitive with PP (absolutive object)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6bVAbs
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6bNegObjVerbRequiredVAbs - V initial, ditransitive with PP (absolutive object)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6bNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cVNom - V final, ditransitive with PP}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6cVNom
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cNegObjVerbRequiredVNom - V final, ditransitive with PP}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6cNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cQSubjVNom - V final, ditransitive with PP, subject questioned}
VP = PP DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
		{&lt;DP head type reflexive&gt; = -
		/&lt;DP head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animacy&gt; = &lt;DP head agr animacy&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP option&gt; = 6cQSubjVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cQSubjNegObjVerbRequiredVNom - V final, ditransitive with PP, subject questioned}
VP = PP DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
			{&lt;DP head type reflexive&gt; = -
			/&lt;DP head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animacy&gt; = &lt;DP head agr animacy&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6cQSubjNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cQAdvPVNom - V final, ditransitive with PP, AdvP questioned}
VP = PP DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6cQAdvPVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cQAdvPNegObjVerbRequiredVNom - V final, ditransitive with PP, AdvP questioned}
VP = PP DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6cQAdvPNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dVAbs - V final, ditransitive with PP (absolutive object)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6dVAbs
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dNegObjVerbRequiredVAbs - V final, ditransitive with PP (absolutive object)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6dNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dQSubjVAbs - V final, ditransitive with PP (absolutive case object), subject questioned}
VP = PP DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
			{&lt;DP head type reflexive&gt; = -
			/&lt;DP head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animacy&gt; = &lt;DP head agr animacy&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP option&gt; = 6dQSubjVAbs
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dQSubjNegObjVerbRequiredVAbs - V final, ditransitive with PP (absolutive case object), subject questioned}
VP = PP DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
			{&lt;DP head type reflexive&gt; = -
			/&lt;DP head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animacy&gt; = &lt;DP head agr animacy&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6dQSubjNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dQAdvPVAbs - V final, ditransitive with PP (absolutive case object), AdvP questioned}
VP = PP DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6dQAdvPVAbs
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dQAdvPNegObjVerbRequiredVAbs - V final, ditransitive with PP (absolutive case object), AdvP questioned}
VP = PP DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6dQAdvPNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6aqppVNom - V initial, ditransitive with PP questioned}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP option&gt; = 6aqppVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6aqppNegObjVerbRequiredVNom - V initial, ditransitive with PP questioned}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6aqppNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6bqppVAbs - V initial, ditransitive with PP questioned (absolutive object)}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP option&gt; = 6bqppVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6bqppNegObjVerbRequiredVAbs - V initial, ditransitive with PP questioned (absolutive object)}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6bqppNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cqppVNom - V final, ditransitive with PP questioned}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 6cqppVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cqppNegObjVerbRequiredVNom - V final, ditransitive with PP questioned}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6cqppNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cqppSOVVNom - SOV, ditransitive with PP questioned}
VP = DP PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;PP head type wh&gt; = +
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 6cqppSOVVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6cqppSOVNegObjVerbRequiredVNom - SOV, ditransitive with PP questioned}
VP = DP PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;PP head type wh&gt; = +
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6cqppSOVNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dqppVAbs - V final, ditransitive with PP questioned (absolutive object)}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 6dqppVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dqppNegObjVerbRequiredVAbs - V final, ditransitive with PP questioned (absolutive object)}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head fronted cat&gt; = PP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6dqppNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dqppSOVVAbs - SOV, ditransitive with PP questioned (absolutive object)}
VP = DP PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;PP head type wh&gt; = +
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 6dqppSOVVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6dqppSOVNegObjVerbRequiredVAbs - SOV, ditransitive with PP questioned (absolutive object)}
VP = DP PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;PP head type wh&gt; = +
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6dqppSOVNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6eVNom - VSO order, ditransitive with PP}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6eNegSubjVerbRequiredVNom - VSO order, ditransitive with PP}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eNegSubjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6eNegObjVerbRequiredVNom - VSO order, ditransitive with PP}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6eNegSubjorObjVerbRequiredVNom - VSO order, ditransitive with PP}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eNegSubjorObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6eiVNom - VSO order, ditransitive with PP, imperative}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eiVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6eiNegObjVerbRequiredVNom - VSO order, ditransitive with PP, imperative}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6eiNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6epVNom - VSO order, ditransitive with PP, pro-drop}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6epVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6epNegObjVerbRequiredVNom - VSO order, ditransitive with PP, pro-drop}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6epNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6fVAbs - VSO order, ditransitive with PP (absolutive object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6fNegSubjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fNegSubjVerbRequiredVAbs
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6fNegObjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6fNegSubjorObjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive object)}
VP = V DP DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fNegSubjorObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6fiVAbs - VSO order, ditransitive with PP (absolutive case object), imperative}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fiVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6fiNegObjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive case object), imperative}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fiNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6fpVAbs - VSO order, ditransitive with PP (absolutive object), pro-drop}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fpVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6fpNegObjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive object), pro-drop}
VP = V DP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6fpNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6gVNom - OSV order, ditransitive with PP}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6gNegSubjVerbRequiredVNom - OSV order, ditransitive with PP}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gNegSubjVerbRequiredVNom
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6gNegObjVerbRequiredVNom - OSV order, ditransitive with PP}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6gNegSubjorObjVerbRequiredVNom - OSV order, ditransitive with PP}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gNegSubjorObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6giVNom - OSV order, ditransitive with PP, imperative}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6giVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6giNegObjVerbRequiredVNom - OSV order, ditransitive with PP, imperative}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6giNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6gpVNom - OSV order, ditransitive with PP, pro-drop}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = +
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gpVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6gpNegObjVerbRequiredVNom - OSV order, ditransitive with PP, pro-drop}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = +
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6gpNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6hVabs - OSV order, ditransitive with PP (absolutive object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6hNegSubjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hNegSubjVerbRequiredVAbs
</xsl:text>
</xsl:if>

















































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6hNegObjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
&lt;VP option&gt; = 6hNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6hNegSubjorObjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive object)}
VP = PP DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hNegSubjorObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6hiVAbs - OSV order, ditransitive with PP (absolutive case object), imperative}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hiVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6hiNegObjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive case object), imperative}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hiNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6hpVAbs - OSV order, ditransitive with PP (absolutive object), pro-drop}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hpVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6hpNegObjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive object), pro-drop}
VP = PP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [type:[reciprocal:+]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
					 [subject:[head:[agr:[number:plural]]]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 6hpNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6iVNom - V initial, ditransitive with PP, object questioned}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6iVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6iFocVNom - V initial, ditransitive with PP, object focused}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6iFocVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6iNegObjVerbRequiredVNom - V initial, ditransitive with PP, object questioned}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6iNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6iNegObjVerbRequiredFocVNom - V initial, ditransitive with PP, object focused}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6iNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6jVAbs - V initial, ditransitive with PP, absolutive object questioned}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject  head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6jVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6jFocVAbs - V initial, ditransitive with PP, absolutive object focused}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject  head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6jFocVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6jNegObjVerbRequiredVAbs - V initial, ditransitive with PP, absolutive object questioned}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject  head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6jNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6jNegObjVerbRequiredFocVAbs - V initial, ditransitive with PP, absolutive object focused}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject  head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6jNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6kVNom - V final, ditransitive with PP, object questioned}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6kVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6kFocVNom - V final, ditransitive with PP, object focused}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6kFocVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6kNegObjVerbRequiredVNom - V final, ditransitive with PP, object questioned}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6kNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6kNegObjVerbRequiredFocVNom - V final, ditransitive with PP, object focused}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6kNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6lVAbs - V final, ditransitive with PP, absolutive object questioned}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject  head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6lVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6lFocVAbs - V final, ditransitive with PP, absolutive object focused}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject  head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6lFocVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6lNegObjVerbRequiredVAbs - V final, ditransitive with PP, absolutive object questioned}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = DP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject  head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6lNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

















































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6lNegObjVerbRequiredFocVAbs - V final, ditransitive with PP, absolutive object focused}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	{&lt;V head infl voice&gt; = actor
	&lt;V head subject head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head subject  head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head infl valence&gt; =active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6lNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mVNom - VSO order, ditransitive with PP (object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6mVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mFocVNom - VSO order, ditransitive with PP (object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6mFocVNom
</xsl:text>
</xsl:if>





































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mNegSubjVerbRequiredVNom - VSO order, ditransitive with PP (object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegSubjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mNegSubjVerbRequiredFocVNom - VSO order, ditransitive with PP (object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegSubjVerbRequiredFocVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mNegObjVerbRequiredVNom - VSO order, ditransitive with PP (object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mNegObjVerbRequiredFocVNom - VSO order, ditransitive with PP (object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>





































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mNegSubjorObjVerbRequiredVNom - VSO order, ditransitive with PP (object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegSubjorObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mNegSubjorObjVerbRequiredFocVNom - VSO order, ditransitive with PP (object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mNegSubjorObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>





































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mpVNom - VSO order, ditransitive with PP (object questioned), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6mpVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mpFocVNom - VSO order, ditransitive with PP (object focused), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6mpFocVNom
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mpNegObjVerbRequiredVNom - VSO order, ditransitive with PP (object questioned), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mpNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6mpNegObjVerbRequiredFocVNom - VSO order, ditransitive with PP (object focused), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6mpNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6nVAbs - VSO order, ditransitive with PP (absolutive object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6nVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6nFocVAbs - VSO order, ditransitive with PP (absolutive object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6nFocVAbs
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6nNegSubjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegSubjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6nNegSubjVerbRequiredFocVAbs - VSO order, ditransitive with PP (absolutive object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegSubjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6nNegObjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6nNegObjVerbRequiredFocVAbs - VSO order, ditransitive with PP (absolutive object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6nNegSubjorObjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive object questioned)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegSubjorObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6nNegSubjorObjVerbRequiredFocVAbs - VSO order, ditransitive with PP (absolutive object focused)}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6nNegSubjorObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6npVAbs - VSO order, ditransitive with PP (absolutive object questioned), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6npVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6npFocVAbs - VSO order, ditransitive with PP (absolutive object focused), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6npFocVAbs
</xsl:text>
</xsl:if>

















































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6npNegObjVerbRequiredVAbs - VSO order, ditransitive with PP (absolutive object questioned), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6npNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6npNegObjVerbRequiredFocVAbs - VSO order, ditransitive with PP (absolutive object focused), pro-drop}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6npNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>

















































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6oVNom - OSV order, ditransitive with PP (object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6oVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6oFocVNom - OSV order, ditransitive with PP (object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6oFocVNom
</xsl:text>
</xsl:if>





































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6oNegSubjVerbRequiredVNom - OSV order, ditransitive with PP (object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegSubjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6oNegSubjVerbRequiredFocVNom - OSV order, ditransitive with PP (object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegSubjVerbRequiredFocVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6oNegObjVerbRequiredVNom - OSV order, ditransitive with PP (object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6oNegObjVerbRequiredFocVNom - OSV order, ditransitive with PP (object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>





































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6oNegSubjorObjVerbRequiredVNom - OSV order, ditransitive with PP (object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegSubjorObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6oNegSubjorObjVerbRequiredFocVNom - OSV order, ditransitive with PP (object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6oNegSubjorObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>





































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6opVNom - OSV order, ditransitive with PP (object questioned), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6opVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6opFocVNom - OSV order, ditransitive with PP (object focused), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6opFocVNom
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6opNegObjVerbRequiredVNom - OSV order, ditransitive with PP (object questioned), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6opNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6opNegObjVerbRequiredFocVNom - OSV order, ditransitive with PP (object focused), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = nominative
	}
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6opNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6pVAbs - OSV order, ditransitive with PP (absolutive object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6pVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6pFocVAbs - OSV order, ditransitive with PP (absolutive object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6pFocVAbs
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6pNegSubjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegSubjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6pNegSubjVerbRequiredFocVAbs - OSV order, ditransitive with PP (absolutive object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegSubjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6pNegObjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6pNegObjVerbRequiredFocVAbs - OSV order, ditransitive with PP (absolutive object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6pNegSubjorObjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive object questioned)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegSubjorObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6pNegSubjorObjVerbRequiredFocVAbs - OSV order, ditransitive with PP (absolutive object focused)}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6pNegSubjorObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>









































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6ppVAbs - OSV order, ditransitive with PP (absolutive object questioned), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6ppVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6ppFocVAbs - OSV order, ditransitive with PP (absolutive object focused), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6ppFocVAbs
</xsl:text>
</xsl:if>

















































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6ppNegObjVerbRequiredVAbs - OSV order, ditransitive with PP (absolutive object questioned), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6ppNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6ppNegObjVerbRequiredFocVAbs - OSV order, ditransitive with PP (absolutive object focused), pro-drop}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = absolutive
	}
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6ppNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>

















































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6qVNom - VSO order, ditransitive with PP (object), subj questioned}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
		/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6qVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6qFocVNom - VSO order, ditransitive with PP (object), subj focused}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
		/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6qFocVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6qNegObjVerbRequiredVNom - VSO order, ditransitive with PP (object), subj questioned}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
		/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6qNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6qNegObjVerbRequiredFocVNom - VSO order, ditransitive with PP (object), subj focused}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
		/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6qNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6rVAbs - VSO order, ditransitive with PP (abs object), subj questioned}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head fronted head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head fronted head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6rVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6rFocVAbs - VSO order, ditransitive with PP (abs object), subj focused}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head fronted head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head fronted head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 6rFocVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6rNegObjVerbRequiredVAbs - VSO order, ditransitive with PP (abs object), subj questioned}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head fronted head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head fronted head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6rNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6rNegObjVerbRequiredFocVAbs - VSO order, ditransitive with PP (abs object), subj focused}
VP = V DP PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head fronted head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head fronted head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6rNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6sVNom - OSV order, ditransitive with PP (object), subj questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6sVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6sFocVNom - OSV order, ditransitive with PP (object), subj focused}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6sFocVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6sNegObjVerbRequiredVNom - OSV order, ditransitive with PP (object), subj questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6sNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6sNegObjVerbRequiredFocVNom - OSV order, ditransitive with PP (object), subj focused}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;VP head fronted head case&gt; = nominative
	&lt;DP head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;VP head fronted head case&gt; = genitive
	&lt;DP head case&gt; = nominative
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6sNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6tVAbs - OSV order, ditransitive with PP (abs object), subj questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head fronted head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head fronted head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6tVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6tFocVAbs - OSV order, ditransitive with PP (abs object), subj focused}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head fronted head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head fronted head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 6tFocVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6tNegObjVerbRequiredVAbs - OSV order, ditransitive with PP (abs object), subj questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head fronted head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head fronted head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head type question&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6tNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6tNegObjVerbRequiredFocVAbs - OSV order, ditransitive with PP (abs object), subj focused}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head subject&gt; = &lt;VP head fronted&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
			{&lt;DP head type reflexive&gt; = +
	&lt;VP head object head agr&gt; = &lt;VP head fronted head agr&gt;
			/&lt;DP head type reflexive&gt; = -
			}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;V head fronted head case&gt; = absolutive
	&lt;DP head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;V head fronted head case&gt; = ergative
	&lt;DP head case&gt; = absolutive
	}
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head type question&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;  | if indirectobject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6tNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6uVNom - VSO order, ditransitive with PP questioned (object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 6uVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6uNegSubjVerbRequiredVNom - VSO order, ditransitive with PP questioned (object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6uNegSubjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6uNegObjVerbRequiredVNom - VSO order, ditransitive with PP questioned (object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6uNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6uNegSubjorObjVerbRequiredVNom - VSO order, ditransitive with PP questioned (object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6uNegSubjorObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6upVNom - VSO order, ditransitive with PP questioned (acc object), pro-drop}
VP = V DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 6upVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6upNegObjVerbRequiredVNom - VSO order, ditransitive with PP questioned (object), pro-drop}
VP = V DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6upNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6vVAbs - VSO order, ditransitive with PP questioned (abs object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 6vVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6vNegSubjVerbRequiredVAbs - VSO order, ditransitive with PP questioned (abs object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6vNegSubjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6vNegObjVerbRequiredVAbs - VSO order, ditransitive with PP questioned (abs object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6vNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6vNegSubjorObjVerbRequiredVAbs - VSO order, ditransitive with PP questioned (abs object)}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6vNegSubjorObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6vpVAbs - VSO order, ditransitive with PP questioned (abs object), pro-drop}
VP = V DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 6vpVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6vpNegObjVerbRequiredVAbs - VSO order, ditransitive with PP questioned (abs object), pro-drop}
VP = V DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6vpNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6wVNom - OSV order, ditransitive with PP questioned (object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 6wVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6wNegSubjVerbRequiredVNom - OSV order, ditransitive with PP questioned (object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6wNegSubjVerbRequiredVNom
</xsl:text>
</xsl:if>





























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6wNegObjVerbRequiredVNom - OSV order, ditransitive with PP questioned (object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6wNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6wNegSubjorObjVerbRequiredVNom - OSV order, ditransitive with PP questioned (object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = genitive
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6wNegSubjorObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6wpVNom - OSV order, ditransitive with PP questioned (object), pro-drop}
VP = DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 6wpVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6wpNegObjVerbRequiredVNom - OSV order, ditransitive with PP questioned (object), pro-drop}
VP = DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = genitive
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = nominative
	}
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6wpNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6xVAbs - OSV order, ditransitive with PP questioned (abs object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 6xVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6xNegSubjVerbRequiredVAbs - OSV order, ditransitive with PP questioned (abs object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6xNegSubjVerbRequiredVAbs
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6xNegObjVerbRequiredVAbs - OSV order, ditransitive with PP questioned (abs object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6xNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6xNegSubjorObjVerbRequiredVAbs - OSV order, ditransitive with PP questioned (abs object)}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP head case&gt; = absolutive
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6xNegSubjorObjVerbRequiredVAbs
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6xpVAbs - OSV order, ditransitive with PP questioned (abs object), pro-drop}
VP = DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 6xpVAbs
</xsl:text>
</xsl:if>

































































































































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 6xpNegObjVerbRequiredVAbs - OSV order, ditransitive with PP questioned (abs object), pro-drop}
VP = DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
			{&lt;DP_1 head type reflexive&gt; = -
			/&lt;DP_1 head type reflexive&gt; = +
	&lt;V head subject head agr&gt; = &lt;DP_1 head agr&gt;
	}
	&lt;V head type ditransitive&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; =active
	&lt;V head type motion&gt; = -
	{&lt;V head infl voice&gt; = actor
	&lt;DP_1 head case&gt; = ergative
	/&lt;V head infl voice&gt; = {object dative locative instrumental goal}
	&lt;DP_1 head case&gt; = absolutive
	}
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head fronted cat&gt; = PP
	&lt;VP head type question&gt; = +
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be
					 [infl:[polarity:negative]]
	&lt;VP option&gt; = 6xpNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>


































































































































</xsl:template>
</xsl:stylesheet>
