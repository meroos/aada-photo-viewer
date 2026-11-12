<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>geonode:bronze_age_stone_tools_artefactsc6b9730e7e4e</sld:Name>
        <sld:UserStyle>
      <sld:Name>BA_stone_tools_artefacts_photocards</sld:Name>
      <sld:Title>AADA photographs</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>photos</sld:Name>
        <sld:Rule>
          <sld:Name>Photograph (selection)</sld:Name>
          <ogc:Filter><ogc:PropertyIsLessThan><ogc:Function name="strIndexOf"><ogc:Literal>|KHMESIE_3478_0|KHMESIE_4391_0|KHMESIE_5844_0|KHMESIE_6165_0|KHMESIE_6251_1|KHMESIE_6509_0|KM_11140_3|KM_12448_0|KM_12530_0|KM_14087_1|KM_14087_3|KM_14504_350|KM_14504_526|KM_14603_0|KM_14878_1|KM_14878_2|KM_14999_1|KM_14999_2|KM_15147_1|KM_15902_0|KM_17296_0|KM_17646_166|KM_17646_95|KM_17853_0|KM_18828_0|KM_19000_5514|KM_1907_10|KM_19387_0|KM_19580_0|KM_19896_0|KM_20065_0|KM_2012_5|KM_2023_104|KM_2029_102|KM_20374_2|KM_20375_1|KM_20376_2|KM_20394_3|KM_20400_24|KM_20417_1|KM_20417_3|KM_2041_3|KM_20442_1|KM_20478_0|KM_20562_353|KM_20806_1|KM_2084_278|KM_21018_18|KM_21034_1|KM_21518_0|KM_21962_0|KM_22003_0|KM_22035_0|KM_22065_9|KM_22245_2|KM_22488_1511|KM_22488_1943|KM_22488_2084|KM_22488_899|KM_22488_900|KM_22488_901|KM_22841_95|KM_22897_1468|KM_22897_2431|KM_22897_2575|KM_22897_262|KM_23306_839|KM_23332_32|KM_23808_1860|KM_23808_2072|KM_23808_2888|KM_23808_363|KM_24195_0|KM_24237_1|KM_24237_2|KM_24418_176|KM_24418_177|KM_24848_133|KM_25075_2|KM_25375_64|KM_26618_2|KM_27240_2|KM_27804_14|KM_28832_102|KM_28833_0|KM_28937_0|KM_30720_0|KM_3078_8|KM_30888_92|KM_31379_14|KM_31379_18|KM_31379_3|KM_31379_78|KM_3147_19|KM_3147_20|KM_3147_21|KM_32048_1180|KM_32048_1528|KM_32353_41|KM_32708_1|KM_32709_5|KM_32797_1|KM_32797_2|KM_32797_3|KM_32797_4|KM_33132_0|KM_39455_1|KM_39490_0|KM_5630_0|KM_7162_3|KM_9074_0|KM_9201_0|KM_9453_0|KM_9843_1|PER_36_1|SATM_10315_0|SATM_16411_0|SATM_16443_0|SATM_2618_0|SATM_6334_0|SATM_8830_0|TMM_13455_1|TMM_99_1|ÃM_143_0|ÃM_624_28|ÃM_91_0|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_numbe</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>sub_number</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsLessThan></ogc:Filter>
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
                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="aada_cards/${strToUpperCase(collection)}_${numberFormat('0',parseDouble(main_numbe))}_${numberFormat('0',parseDouble(sub_number))}.jpg"/>
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
                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="aada_cards/${strToUpperCase(collection)}_${numberFormat('0',parseDouble(main_numbe))}_${numberFormat('0',parseDouble(sub_number))}.jpg"/>
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
            <sld:VendorOption name="partials">true</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
