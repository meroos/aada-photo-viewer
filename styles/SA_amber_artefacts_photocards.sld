<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>geonode:stone_age_amber_artefacts_190ad0161c981bc9ce4a55730efe29a6</sld:Name>
        <sld:UserStyle>
      <sld:Name>SA_amber_artefacts_photocards</sld:Name>
      <sld:Title>AADA photographs</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>photos</sld:Name>
        <sld:Rule>
          <sld:Name>Photograph (selection)</sld:Name>
          <sld:MinScaleDenominator>100000</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>1300000</sld:MaxScaleDenominator>
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
                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="aada_cards/${strToUpperCase(collection)}_${numberFormat('0',parseDouble(main_numbe))}_${numberFormat('0',parseDouble(subnumber))}.jpg"/>
                <sld:Format>image/jpeg</sld:Format>
              </sld:ExternalGraphic>
              <sld:Mark>
                <sld:WellKnownName>circle</sld:WellKnownName>
                <sld:Fill><sld:CssParameter name="fill-opacity">0</sld:CssParameter></sld:Fill>
                <sld:Stroke><sld:CssParameter name="stroke-opacity">0</sld:CssParameter></sld:Stroke>
              </sld:Mark>
                          </sld:Graphic>
            <sld:Priority><ogc:Function name="if_then_else"><ogc:Function name="equalTo"><ogc:PropertyName>undamaged</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:Function><ogc:Literal>1000</ogc:Literal><ogc:Literal>100</ogc:Literal></ogc:Function></sld:Priority>
            <sld:VendorOption name="conflictResolution">true</sld:VendorOption>
            <sld:VendorOption name="spaceAround">3</sld:VendorOption>
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
                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="aada_cards/${strToUpperCase(collection)}_${numberFormat('0',parseDouble(main_numbe))}_${numberFormat('0',parseDouble(subnumber))}.jpg"/>
                <sld:Format>image/jpeg</sld:Format>
              </sld:ExternalGraphic>
              <sld:Mark>
                <sld:WellKnownName>circle</sld:WellKnownName>
                <sld:Fill><sld:CssParameter name="fill-opacity">0</sld:CssParameter></sld:Fill>
                <sld:Stroke><sld:CssParameter name="stroke-opacity">0</sld:CssParameter></sld:Stroke>
              </sld:Mark>
                          </sld:Graphic>
            <sld:Priority><ogc:Function name="if_then_else"><ogc:Function name="equalTo"><ogc:PropertyName>undamaged</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:Function><ogc:Literal>1000</ogc:Literal><ogc:Literal>100</ogc:Literal></ogc:Function></sld:Priority>
            <sld:VendorOption name="conflictResolution">false</sld:VendorOption>
            <sld:VendorOption name="spaceAround">3</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
