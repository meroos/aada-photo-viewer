<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>geonode:aada_ia_iron</sld:Name>
        <sld:UserStyle>
      <sld:Name>AADA_IA_iron_artefacts_photocards</sld:Name>
      <sld:Title>AADA photographs</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>photos</sld:Name>
        <sld:Rule>
          <sld:Name>Photograph (selection)</sld:Name>
          <ogc:Filter><ogc:PropertyIsGreaterThanOrEqualTo><ogc:Function name="strIndexOf"><ogc:Literal>|KM_15107_1|KM_15107_2|KM_15141_298|KM_15142_1|KM_15142_2|KM_15142_3|KM_15142_4|KM_15142_5|KM_15150_1|KM_15165_1|KM_15181_1|KM_15181_3|KM_15188_37|KM_15189_142|KM_15196_53|KM_15208_67|KM_15286_1|KM_15464_1|KM_16283_36|KM_16312_214|KM_17145_1|KM_17208_118|KM_17208_211|KM_17208_221|KM_17208_242|KM_17208_417|KM_17208_611|KM_17208_658|KM_17505_1|KM_17777_2|KM_18917_843|KM_22964_4|KM_22964_5|KM_22964_7|KM_22964_8|KM_22964_9|KM_23043_1|KM_23043_6|KM_23043_7|KM_23051_1|KM_23051_2|KM_23051_3|KM_23091_3|KM_23161_1|KM_23162_1|KM_23179_1|KM_23179_3|KM_23274_240|KM_23521_1|KM_23574_2|KM_23575_1|KM_23593_30|KM_23593_31|KM_23593_32|KM_23593_78|KM_23607_490|KM_23701_509|KM_23713_48|KM_23713_49|KM_23713_50|KM_23806_1|KM_24007_54|KM_24007_94|KM_24254_1|KM_6503_10|KM_6503_12|KM_6503_20|KM_6503_22|KM_6503_8|KM_6507_0|KM_6579_3|KM_6579_4|KM_6658_1|KM_6658_11|KM_6658_157|KM_6658_158|KM_6658_2|KM_6658_32|KM_6658_34|KM_6658_4|KM_6720_11|KM_6746_111|KM_6746_112|KM_6746_115|KM_6746_118|KM_6746_140|KM_6746_141|KM_6746_25|KM_6746_53|KM_6746_6|KM_6746_9|KM_6746_90|KM_6746_98|KM_6751_11|KM_6751_17|KM_6751_3|KM_6751_4|KM_6753_4|KM_6753_6|KM_6753_7|TYA_494_269|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_number</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>subnumber</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsGreaterThanOrEqualTo></ogc:Filter>
          <sld:MinScaleDenominator>100000</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>10000000</sld:MaxScaleDenominator>
          <sld:TextSymbolizer>
            <sld:Label><ogc:Literal> </ogc:Literal></sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
              <sld:CssParameter name="font-size">9</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement><sld:PointPlacement><sld:AnchorPoint><sld:AnchorPointX>0.5</sld:AnchorPointX><sld:AnchorPointY>0.5</sld:AnchorPointY></sld:AnchorPoint></sld:PointPlacement></sld:LabelPlacement>
                        <sld:Fill><sld:CssParameter name="fill">#222222</sld:CssParameter></sld:Fill>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="aada_cards/${strToUpperCase(collection)}_${numberFormat('0',parseDouble(main_number))}_${numberFormat('0',parseDouble(subnumber))}.jpg"/>
                <sld:Format>image/jpeg</sld:Format>
              </sld:ExternalGraphic>
              <sld:Mark>
                <sld:WellKnownName>circle</sld:WellKnownName>
                <sld:Fill><sld:CssParameter name="fill-opacity">0</sld:CssParameter></sld:Fill>
                <sld:Stroke><sld:CssParameter name="stroke-opacity">0</sld:CssParameter></sld:Stroke>
              </sld:Mark>
                          </sld:Graphic>
            <sld:Priority><ogc:Function name="if_then_else"><ogc:Function name="greaterThan"><ogc:Function name="parseDouble"><ogc:PropertyName>fragment_length_mm</ogc:PropertyName></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:Function><ogc:Literal>100</ogc:Literal><ogc:Literal>1000</ogc:Literal></ogc:Function></sld:Priority>
            <sld:VendorOption name="conflictResolution">true</sld:VendorOption>
            <sld:VendorOption name="spaceAround">3</sld:VendorOption>
            <sld:VendorOption name="partials">true</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Photograph (all)</sld:Name>
          <ogc:Filter><ogc:PropertyIsGreaterThanOrEqualTo><ogc:Function name="strIndexOf"><ogc:Literal>|KM_15107_1|KM_15107_2|KM_15141_298|KM_15142_1|KM_15142_2|KM_15142_3|KM_15142_4|KM_15142_5|KM_15150_1|KM_15165_1|KM_15181_1|KM_15181_3|KM_15188_37|KM_15189_142|KM_15196_53|KM_15208_67|KM_15286_1|KM_15464_1|KM_16283_36|KM_16312_214|KM_17145_1|KM_17208_118|KM_17208_211|KM_17208_221|KM_17208_242|KM_17208_417|KM_17208_611|KM_17208_658|KM_17505_1|KM_17777_2|KM_18917_843|KM_22964_4|KM_22964_5|KM_22964_7|KM_22964_8|KM_22964_9|KM_23043_1|KM_23043_6|KM_23043_7|KM_23051_1|KM_23051_2|KM_23051_3|KM_23091_3|KM_23161_1|KM_23162_1|KM_23179_1|KM_23179_3|KM_23274_240|KM_23521_1|KM_23574_2|KM_23575_1|KM_23593_30|KM_23593_31|KM_23593_32|KM_23593_78|KM_23607_490|KM_23701_509|KM_23713_48|KM_23713_49|KM_23713_50|KM_23806_1|KM_24007_54|KM_24007_94|KM_24254_1|KM_6503_10|KM_6503_12|KM_6503_20|KM_6503_22|KM_6503_8|KM_6507_0|KM_6579_3|KM_6579_4|KM_6658_1|KM_6658_11|KM_6658_157|KM_6658_158|KM_6658_2|KM_6658_32|KM_6658_34|KM_6658_4|KM_6720_11|KM_6746_111|KM_6746_112|KM_6746_115|KM_6746_118|KM_6746_140|KM_6746_141|KM_6746_25|KM_6746_53|KM_6746_6|KM_6746_9|KM_6746_90|KM_6746_98|KM_6751_11|KM_6751_17|KM_6751_3|KM_6751_4|KM_6753_4|KM_6753_6|KM_6753_7|TYA_494_269|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_number</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>subnumber</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsGreaterThanOrEqualTo></ogc:Filter>
          <sld:MaxScaleDenominator>100000</sld:MaxScaleDenominator>
          <sld:TextSymbolizer>
            <sld:Label><ogc:Literal> </ogc:Literal></sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">SansSerif</sld:CssParameter>
              <sld:CssParameter name="font-size">9</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement><sld:PointPlacement><sld:AnchorPoint><sld:AnchorPointX>0.5</sld:AnchorPointX><sld:AnchorPointY>0.5</sld:AnchorPointY></sld:AnchorPoint></sld:PointPlacement></sld:LabelPlacement>
                        <sld:Fill><sld:CssParameter name="fill">#222222</sld:CssParameter></sld:Fill>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="aada_cards/${strToUpperCase(collection)}_${numberFormat('0',parseDouble(main_number))}_${numberFormat('0',parseDouble(subnumber))}.jpg"/>
                <sld:Format>image/jpeg</sld:Format>
              </sld:ExternalGraphic>
              <sld:Mark>
                <sld:WellKnownName>circle</sld:WellKnownName>
                <sld:Fill><sld:CssParameter name="fill-opacity">0</sld:CssParameter></sld:Fill>
                <sld:Stroke><sld:CssParameter name="stroke-opacity">0</sld:CssParameter></sld:Stroke>
              </sld:Mark>
                          </sld:Graphic>
            <sld:Priority><ogc:Function name="if_then_else"><ogc:Function name="greaterThan"><ogc:Function name="parseDouble"><ogc:PropertyName>fragment_length_mm</ogc:PropertyName></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:Function><ogc:Literal>100</ogc:Literal><ogc:Literal>1000</ogc:Literal></ogc:Function></sld:Priority>
            <sld:VendorOption name="conflictResolution">false</sld:VendorOption>
            <sld:VendorOption name="spaceAround">3</sld:VendorOption>
            <sld:VendorOption name="partials">true</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
