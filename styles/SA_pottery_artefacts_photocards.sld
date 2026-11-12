<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>geonode:aada_pottery_stone_age</sld:Name>
        <sld:UserStyle>
      <sld:Name>SA_pottery_artefacts_photocards</sld:Name>
      <sld:Title>AADA photographs</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>photos</sld:Name>
        <sld:Rule>
          <sld:Name>Photograph (selection)</sld:Name>
          <ogc:Filter><ogc:PropertyIsGreaterThanOrEqualTo><ogc:Function name="strIndexOf"><ogc:Literal>|KM_10277_0|KM_11149_0|KM_11792_0|KM_12565_0|KM_12720_0|KM_15324_0|KM_15586_0|KM_16421_0|KM_17368_0|KM_22032_0|KM_22796_0|KM_27586_0|KM_27732_0|KM_28654_0|KM_28767_0|KM_29631_0|KM_33383_0|KM_6500_1|KM_6625_3|KM_6670_3|KM_6670_4|KM_8696_3|KM_8737_0|KM_8745_13|KM_8994_0|KM_9643_0|SATM_17162_0|TMM_13692_1|TMM_18315_2|TMM_18315_3|TMM_18315_4|TYA_137_0|ÅM_154_0|ÅM_238_0|ÅM_322_0|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_number</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>subnumber</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsGreaterThanOrEqualTo></ogc:Filter>
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
            <sld:Priority><ogc:Literal>500</ogc:Literal></sld:Priority>
            <sld:VendorOption name="conflictResolution">true</sld:VendorOption>
            <sld:VendorOption name="spaceAround">3</sld:VendorOption>
            <sld:VendorOption name="partials">true</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Photograph (all)</sld:Name>
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
            <sld:Priority><ogc:Literal>500</ogc:Literal></sld:Priority>
            <sld:VendorOption name="conflictResolution">false</sld:VendorOption>
            <sld:VendorOption name="spaceAround">3</sld:VendorOption>
            <sld:VendorOption name="partials">true</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
