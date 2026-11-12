<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>geonode:stone_age_clay_artefacts_14e7bfc6c9b1c43dc54cb1ed71365310</sld:Name>
        <sld:UserStyle>
            <sld:Name>SA_clay_artefacts_photos</sld:Name>
            
            <sld:FeatureTypeStyle>
                <sld:Name>name</sld:Name>
                <sld:Transformation>
                    <ogc:Function name="gs:PointStacker">
                        <ogc:Function name="parameter">
                            <ogc:Literal>data</ogc:Literal>
                        </ogc:Function>
                        <ogc:Function name="parameter">
                            <ogc:Literal>cellSize</ogc:Literal>
                            <ogc:Literal>30</ogc:Literal>
                        </ogc:Function>
                        <ogc:Function name="parameter">
                            <ogc:Literal>outputBBOX</ogc:Literal>
                            <ogc:Function name="env">
                                <ogc:Literal>wms_bbox</ogc:Literal>
                            </ogc:Function>
                        </ogc:Function>
                        <ogc:Function name="parameter">
                            <ogc:Literal>outputWidth</ogc:Literal>
                            <ogc:Function name="env">
                                <ogc:Literal>wms_width</ogc:Literal>
                            </ogc:Function>
                        </ogc:Function>
                        <ogc:Function name="parameter">
                            <ogc:Literal>outputHeight</ogc:Literal>
                            <ogc:Function name="env">
                                <ogc:Literal>wms_height</ogc:Literal>
                            </ogc:Function>
                        </ogc:Function>
                    </ogc:Function>
                </sld:Transformation>
                <sld:Rule>
                    <sld:Name>single</sld:Name>
                    <sld:Title>1 find</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>count</ogc:PropertyName>
                            <ogc:Literal>1</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MinScaleDenominator>150000.0</sld:MinScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#1b9e77</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#232323</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>8</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>small_cluster</sld:Name>
                    <sld:Title>2-9 finds</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>count</ogc:PropertyName>
                                <ogc:Literal>2</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>count</ogc:PropertyName>
                                <ogc:Literal>10</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:MinScaleDenominator>150000.0</sld:MinScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#1b9e77</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#232323</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>16</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                    <sld:TextSymbolizer>
                        <sld:Label>
                            <ogc:PropertyName>count</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-family">Arial</sld:CssParameter>
                            <sld:CssParameter name="font-size">10</sld:CssParameter>
                            <sld:CssParameter name="font-style">normal</sld:CssParameter>
                            <sld:CssParameter name="font-weight">bold</sld:CssParameter>
                        </sld:Font>
                        <sld:LabelPlacement>
                            <sld:PointPlacement>
                                <sld:AnchorPoint>
                                    <sld:AnchorPointX>0.5</sld:AnchorPointX>
                                    <sld:AnchorPointY>0.5</sld:AnchorPointY>
                                </sld:AnchorPoint>
                            </sld:PointPlacement>
                        </sld:LabelPlacement>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#ffffff</sld:CssParameter>
                        </sld:Fill>
                        <sld:VendorOption name="graphic-resize">stretch</sld:VendorOption>
                    </sld:TextSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>large_cluster</sld:Name>
                    <sld:Title>10+ finds</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyName>count</ogc:PropertyName>
                            <ogc:Literal>10</ogc:Literal>
                        </ogc:PropertyIsGreaterThanOrEqualTo>
                    </ogc:Filter>
                    <sld:MinScaleDenominator>150000.0</sld:MinScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#1b9e77</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#232323</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>26</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                    <sld:TextSymbolizer>
                        <sld:Label>
                            <ogc:PropertyName>count</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-family">Arial</sld:CssParameter>
                            <sld:CssParameter name="font-size">12</sld:CssParameter>
                            <sld:CssParameter name="font-style">normal</sld:CssParameter>
                            <sld:CssParameter name="font-weight">bold</sld:CssParameter>
                        </sld:Font>
                        <sld:LabelPlacement>
                            <sld:PointPlacement>
                                <sld:AnchorPoint>
                                    <sld:AnchorPointX>0.5</sld:AnchorPointX>
                                    <sld:AnchorPointY>0.5</sld:AnchorPointY>
                                </sld:AnchorPoint>
                            </sld:PointPlacement>
                        </sld:LabelPlacement>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#ffffff</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
            <sld:FeatureTypeStyle>
                <sld:Name>name</sld:Name>
                <sld:Rule>
                    <sld:Name>Clay artefact</sld:Name>
                    <sld:Title>Clay artefact</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Clay artefact</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#90d0ef</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#232323</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>7</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Clay idol</sld:Name>
                    <sld:Title>Clay idol</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Clay idol</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#eb8da3</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#232323</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>7</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Clay with teeth marks</sld:Name>
                    <sld:Title>Clay with teeth marks</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Clay with teeth marks</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#fbf085</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#232323</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>7</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        <sld:FeatureTypeStyle>
        <sld:Name>photos</sld:Name>
        <sld:Rule>
          <sld:Name>Photograph (selection)</sld:Name>
          <ogc:Filter><ogc:PropertyIsLessThan><ogc:Function name="strIndexOf"><ogc:Literal>|KHMESIE_5948_0|KM_10903_117|KM_12674_0|KM_12686_173|KM_15124_190|KM_15125_88|KM_15168_25|KM_15194_115|KM_15194_354|KM_15194_355|KM_15194_356|KM_15194_357|KM_15194_484|KM_15194_673|KM_15218_141|KM_15218_210|KM_15341_17|KM_15512_194|KM_16356_334|KM_16356_34|KM_16713_13|KM_16822_1060|KM_16822_1253|KM_16822_373|KM_16822_577|KM_16822_718|KM_16878_454|KM_17284_401|KM_17387_69|KM_17689_136|KM_17689_158|KM_17811_5|KM_17887_7|KM_18134_1224|KM_18171_2|KM_18174_1|KM_18174_5|KM_18179_1|KM_18564_18|KM_18710_2159|KM_19152_2053|KM_20172_3|KM_20180_14|KM_20336_1|KM_20414_20|KM_20464_286|KM_20464_436|KM_20464_55|KM_20584_1289|KM_20584_1321|KM_20584_3110|KM_20584_3547|KM_20584_3783|KM_20584_786|KM_20584_81|KM_20842_31|KM_20990_1|KM_21224_680|KM_21501_104|KM_21501_120|KM_21536_1081|KM_21750_178|KM_21750_397|KM_21750_399|KM_21750_458|KM_21750_473|KM_21750_483|KM_22028_1252|KM_22028_1276|KM_22028_1374|KM_22028_367|KM_22028_422|KM_22028_438|KM_22028_516|KM_22028_546|KM_22028_558|KM_22028_581|KM_22028_642|KM_22028_643|KM_22028_684|KM_22028_965|KM_22028_975|KM_22396_1389|KM_22397_25|KM_22899_532|KM_22938_85|KM_23111_3|KM_23697_65|KM_23728_321|KM_23809_1124|KM_23809_551|KM_23809_614|KM_23809_630|KM_23809_876|KM_23839_3|KM_24461_124|KM_24461_182|KM_24461_257|KM_24540_232|KM_24576_37|KM_26173_543|KM_26220_169|KM_26605_101|KM_26605_31|KM_27022_1659|KM_27586_3|KM_27631_924|KM_28013_15271|KM_28013_832|KM_28068_965|KM_28178_1|KM_28178_16|KM_28178_20|KM_28178_25|KM_28178_6|KM_28202_94|KM_28316_13|KM_28608_220|KM_28608_334|KM_28703_21|KM_28703_25|KM_28703_26|KM_28767_1|KM_29155_237|KM_29155_259|KM_29155_276|KM_29290_11|KM_29290_13|KM_29290_16|KM_29556_2258|KM_29610_1354|KM_29635_656|KM_29692_74|KM_29954_10496|KM_29970_4|KM_30319_1282|KM_30319_1283|KM_30319_1285|KM_30319_1306|KM_30319_1307|KM_30319_1629|KM_30460_2375|KM_30460_5398|KM_30460_6082|KM_30464_8136|KM_30665_3370|KM_30665_3371|KM_30666_1543|KM_30669_289|KM_30669_290|KM_30884_1303|KM_31249_4|KM_31502_1|KM_31510_413|KM_31510_415|KM_31785_142|KM_31785_469|KM_31785_977|KM_31829_234|KM_31829_2960|KM_31829_363|KM_31879_701|KM_32191_202|KM_32191_2362|KM_32191_2417|KM_32191_2554|KM_32191_257|KM_32191_2615|KM_32191_326|KM_32191_427|KM_32688_1195|KM_32688_1228|KM_32688_1236|KM_32688_1396|KM_32688_1454|KM_32688_431|KM_32688_679|KM_33461_64|KM_33923_1011|KM_33923_1019|KM_33923_1021|KM_33923_1035|KM_33923_1074|KM_33923_1084|KM_33923_1777|KM_33923_2103|KM_33923_2248|KM_33923_2555|KM_33923_2613|KM_33923_2669|KM_33923_2708|KM_33923_2744|KM_33923_2944|KM_33923_2989|KM_33923_3117|KM_33923_395|KM_33923_3955|KM_33923_4321|KM_33923_4359|KM_33923_4360|KM_33923_4374|KM_33923_4941|KM_33923_5006|KM_33923_5060|KM_33923_5119|KM_33923_5120|KM_33923_523|KM_33923_524|KM_33923_525|KM_33923_5421|KM_33923_5422|KM_33923_5458|KM_33923_5480|KM_33923_5498|KM_33923_5539|KM_33923_5672|KM_33923_5693|KM_33923_5701|KM_33923_5702|KM_33923_5731|KM_33923_5746|KM_33923_5883|KM_33923_6215|KM_33923_6299|KM_33923_6346|KM_33923_6856|KM_33923_6981|KM_33923_704|KM_33923_7066|KM_33923_709|KM_33923_7103|KM_33923_7171|KM_33923_7454|KM_33923_824|KM_33923_858|KM_33923_881|KM_33923_896|KM_33923_916|KM_33923_929|KM_33923_956|KM_34024_3|KM_34051_485|KM_34305_148|KM_34305_219|KM_34970_473|KM_35295_4|KM_35939_244|KM_35939_533|KM_35939_825|KM_36388_15|KM_37988_131|KM_37988_134|KM_38203_10|KM_5620_1753|KM_5621_2|KM_6620_18|KM_7898_86|KM_7946_4|KM_8038_1|KM_8828_48|KM_8829_31|KM_8955_130|KM_8955_153|KM_8955_209|KM_8955_237|KM_9085_25|KM_9390_116|KM_9390_194|KM_9406_15|KM_9620_3|TYA_203_12|TYA_203_172|TYA_215_18|ÃM_114_92|ÃM_321_49|ÃM_472_18|ÃM_523_300|ÃM_552_52|ÃM_561_252|ÃM_561_98|ÃM_687_1|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_numbe</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>subnumber</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsLessThan></ogc:Filter>
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
            <sld:VendorOption name="partials">true</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
