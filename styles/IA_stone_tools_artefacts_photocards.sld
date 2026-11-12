<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>geonode:iron_age_stone_tools_artefacts</sld:Name>
        <sld:UserStyle>
      <sld:Name>IA_stone_tools_artefacts_photocards</sld:Name>
      <sld:Title>AADA photographs</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>photos</sld:Name>
        <sld:Rule>
          <sld:Name>Photograph (selection)</sld:Name>
          <ogc:Filter><ogc:And><ogc:PropertyIsLessThan><ogc:Function name="strIndexOf"><ogc:Literal>|BM_24_0|BM_56_0|BM_70_0|HAL_1908_0|KHMESIE_1755_0|KHMESIE_2632_0|KHMESIE_2811_0|KHMESIE_2865_0|KHMESIE_2985_0|KHMESIE_5973_0|KIIK_1071_0|KIUR_124_2|KIUR_124_39|KIUR_124_40|KIUR_124_41|KIUR_124_42|KIUR_124_43|KM_1031_0|KM_1070_0|KM_1523_0|KM_15396_33|KM_15802_0|KM_15814_0|KM_15880_3|KM_16870_0|KM_17639_0|KM_17791_1|KM_17791_2|KM_18553_0|KM_19594_0|KM_20061_0|KM_20272_0|KM_20276_0|KM_20277_0|KM_20323_0|KM_20368_0|KM_20374_1|KM_2038_18|KM_2047_4|KM_20585_15|KM_20943_0|KM_20996_0|KM_21291_0|KM_21617_0|KM_21915_0|KM_21930_2|KM_23042_0|KM_23172_0|KM_23173_0|KM_23444_0|KM_23588_0|KM_23711_0|KM_23830_0|KM_23911_5|KM_24293_0|KM_25212_0|KM_25712_12|KM_26058_2215|KM_28020_0|KM_28362_0|KM_28735_2|KM_28901_0|KM_29239_2|KM_30444_0|KM_30553_2|KM_30772_0|KM_31435_65|KM_31553_0|KM_32213_25|KM_32868_0|KM_32869_0|KM_33138_0|KM_33309_0|KM_33314_0|KM_38201_20|KOKE_2870_0|LINDER_125_0|LINDER_19_0|LINDER_68_0|NYBERG_73_0|SATM_17502_0|SATM_8506_0|SATM_984_0|TMM_14846_3|TMM_15338_1|TMM_164_1|TMM_6161_1|TYA_152_5|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_numbe</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>sub_number</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsLessThan><ogc:PropertyIsEqualTo><ogc:Function name="strMatches"><ogc:PropertyName>main_numbe</ogc:PropertyName><ogc:Literal>^[0-9 .]+$</ogc:Literal></ogc:Function><ogc:Literal>true</ogc:Literal></ogc:PropertyIsEqualTo><ogc:Or><ogc:PropertyIsNull><ogc:PropertyName>sub_number</ogc:PropertyName></ogc:PropertyIsNull><ogc:PropertyIsEqualTo><ogc:Function name="strMatches"><ogc:PropertyName>sub_number</ogc:PropertyName><ogc:Literal>^[0-9 .]*$</ogc:Literal></ogc:Function><ogc:Literal>true</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Or></ogc:And></ogc:Filter>
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
          <ogc:Filter><ogc:And><ogc:PropertyIsLessThan><ogc:Function name="strIndexOf"><ogc:Literal>|BM_24_0|BM_56_0|BM_70_0|HAL_1908_0|KHMESIE_1755_0|KHMESIE_2632_0|KHMESIE_2811_0|KHMESIE_2865_0|KHMESIE_2985_0|KHMESIE_5973_0|KIIK_1071_0|KIUR_124_2|KIUR_124_39|KIUR_124_40|KIUR_124_41|KIUR_124_42|KIUR_124_43|KM_1031_0|KM_1070_0|KM_1523_0|KM_15396_33|KM_15802_0|KM_15814_0|KM_15880_3|KM_16870_0|KM_17639_0|KM_17791_1|KM_17791_2|KM_18553_0|KM_19594_0|KM_20061_0|KM_20272_0|KM_20276_0|KM_20277_0|KM_20323_0|KM_20368_0|KM_20374_1|KM_2038_18|KM_2047_4|KM_20585_15|KM_20943_0|KM_20996_0|KM_21291_0|KM_21617_0|KM_21915_0|KM_21930_2|KM_23042_0|KM_23172_0|KM_23173_0|KM_23444_0|KM_23588_0|KM_23711_0|KM_23830_0|KM_23911_5|KM_24293_0|KM_25212_0|KM_25712_12|KM_26058_2215|KM_28020_0|KM_28362_0|KM_28735_2|KM_28901_0|KM_29239_2|KM_30444_0|KM_30553_2|KM_30772_0|KM_31435_65|KM_31553_0|KM_32213_25|KM_32868_0|KM_32869_0|KM_33138_0|KM_33309_0|KM_33314_0|KM_38201_20|KOKE_2870_0|LINDER_125_0|LINDER_19_0|LINDER_68_0|NYBERG_73_0|SATM_17502_0|SATM_8506_0|SATM_984_0|TMM_14846_3|TMM_15338_1|TMM_164_1|TMM_6161_1|TYA_152_5|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_numbe</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>sub_number</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsLessThan><ogc:PropertyIsEqualTo><ogc:Function name="strMatches"><ogc:PropertyName>main_numbe</ogc:PropertyName><ogc:Literal>^[0-9 .]+$</ogc:Literal></ogc:Function><ogc:Literal>true</ogc:Literal></ogc:PropertyIsEqualTo><ogc:Or><ogc:PropertyIsNull><ogc:PropertyName>sub_number</ogc:PropertyName></ogc:PropertyIsNull><ogc:PropertyIsEqualTo><ogc:Function name="strMatches"><ogc:PropertyName>sub_number</ogc:PropertyName><ogc:Literal>^[0-9 .]*$</ogc:Literal></ogc:Function><ogc:Literal>true</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Or></ogc:And></ogc:Filter>
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
