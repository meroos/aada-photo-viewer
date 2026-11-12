<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>geonode:aada_ia_bronze</sld:Name>
        <sld:UserStyle>
            <sld:Name>AADA_IA_bronze_artefacts_photos</sld:Name>
            
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
                                    <sld:CssParameter name="fill">#7570b3</sld:CssParameter>
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
                                    <sld:CssParameter name="fill">#7570b3</sld:CssParameter>
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
                            <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                        </sld:Fill>
                        <sld:VendorOption name="partials">true</sld:VendorOption>
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
                                    <sld:CssParameter name="fill">#7570b3</sld:CssParameter>
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
                            <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                        </sld:Fill>
                        <sld:VendorOption name="partials">true</sld:VendorOption>
                    </sld:TextSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
            <sld:FeatureTypeStyle>
                <sld:Name>name</sld:Name>
                <sld:Rule>
                    <sld:Name>t0</sld:Name>
                    <sld:Title>Solki</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Solki</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Solki;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#4e79a7</sld:CssParameter>
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
                    <sld:Name>t1</sld:Name>
                    <sld:Title>Hevosenkenkäsolki</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Hevosenkenkäsolki</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Hevosenkenkäsolki;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#f28e2b</sld:CssParameter>
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
                    <sld:Name>t2</sld:Name>
                    <sld:Title>Rannerengas</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Rannerengas</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Rannerengas;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#e15759</sld:CssParameter>
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
                    <sld:Name>t3</sld:Name>
                    <sld:Title>Riipus</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Riipus</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Riipus;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#76b7b2</sld:CssParameter>
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
                    <sld:Name>t4</sld:Name>
                    <sld:Title>Ketjunkantaja</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Ketjunkantaja</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Ketjunkantaja;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#59a14f</sld:CssParameter>
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
                    <sld:Name>t5</sld:Name>
                    <sld:Title>Hela</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Hela</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Hela;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#edc948</sld:CssParameter>
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
                    <sld:Name>t6</sld:Name>
                    <sld:Title>Sormus</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Sormus</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Sormus;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#b07aa1</sld:CssParameter>
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
                    <sld:Name>t7</sld:Name>
                    <sld:Title>Kaularengas</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Kaularengas</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Kaularengas;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#ff9da7</sld:CssParameter>
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
                    <sld:Name>t8</sld:Name>
                    <sld:Title>Koruneula</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Koruneula</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
                                <ogc:PropertyName>type_finnish</ogc:PropertyName>
                                <ogc:Literal>Koruneula;*</ogc:Literal>
                            </ogc:PropertyIsLike>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#9c755f</sld:CssParameter>
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
                    <sld:Name>other</sld:Name>
                    <sld:Title>Other types</sld:Title>
                    <sld:ElseFilter/>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#bab0ac</sld:CssParameter>
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
          <ogc:Filter><ogc:PropertyIsGreaterThanOrEqualTo><ogc:Function name="strIndexOf"><ogc:Literal>|KM_15097_1|KM_15141_302|KM_15160_1|KM_15161_1|KM_15170_1|KM_15181_4|KM_15188_89|KM_15189_136|KM_15196_7|KM_15396_125|KM_15418_1|KM_16312_334|KM_16864_1|KM_17208_134|KM_17208_260|KM_17208_42|KM_17208_655|KM_17446_1|KM_17446_11|KM_17695_2|KM_18556_820|KM_19000_11648|KM_19642_1|KM_22926_103|KM_22926_50|KM_22951_8|KM_23085_10|KM_23183_29|KM_23183_31|KM_23274_212|KM_23523_1|KM_23593_175|KM_23593_257|KM_23593_90|KM_23608_76|KM_23608_77|KM_23608_79|KM_23608_80|KM_23713_52|KM_23713_73|KM_23749_7|KM_6503_17|KM_6579_7|KM_6579_8|KM_6579_9|KM_6658_10|KM_6658_100|KM_6658_131|KM_6658_147|KM_6658_164|KM_6658_166|KM_6658_18|KM_6658_25|KM_6658_26|KM_6658_27|KM_6658_28|KM_6658_3|KM_6658_37|KM_6658_38|KM_6658_46|KM_6658_62|KM_6658_64|KM_6658_73|KM_6658_82|KM_6658_98|KM_6668_2|KM_6746_101|KM_6746_109|KM_6746_12|KM_6746_120|KM_6746_126|KM_6746_142|KM_6746_145|KM_6746_159|KM_6746_23|KM_6746_24|KM_6746_27|KM_6746_30|KM_6746_36|KM_6746_54|KM_6746_72|KM_6746_77|KM_6746_78|KM_6751_14|KM_6751_15|KM_6751_8|KM_6753_9|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_number</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>subnumber</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsGreaterThanOrEqualTo></ogc:Filter>
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
          <ogc:Filter><ogc:PropertyIsGreaterThanOrEqualTo><ogc:Function name="strIndexOf"><ogc:Literal>|KM_15097_1|KM_15141_302|KM_15160_1|KM_15161_1|KM_15170_1|KM_15181_4|KM_15188_89|KM_15189_136|KM_15196_7|KM_15396_125|KM_15418_1|KM_16312_334|KM_16864_1|KM_17208_134|KM_17208_260|KM_17208_42|KM_17208_655|KM_17446_1|KM_17446_11|KM_17695_2|KM_18556_820|KM_19000_11648|KM_19642_1|KM_22926_103|KM_22926_50|KM_22951_8|KM_23085_10|KM_23183_29|KM_23183_31|KM_23274_212|KM_23523_1|KM_23593_175|KM_23593_257|KM_23593_90|KM_23608_76|KM_23608_77|KM_23608_79|KM_23608_80|KM_23713_52|KM_23713_73|KM_23749_7|KM_6503_17|KM_6579_7|KM_6579_8|KM_6579_9|KM_6658_10|KM_6658_100|KM_6658_131|KM_6658_147|KM_6658_164|KM_6658_166|KM_6658_18|KM_6658_25|KM_6658_26|KM_6658_27|KM_6658_28|KM_6658_3|KM_6658_37|KM_6658_38|KM_6658_46|KM_6658_62|KM_6658_64|KM_6658_73|KM_6658_82|KM_6658_98|KM_6668_2|KM_6746_101|KM_6746_109|KM_6746_12|KM_6746_120|KM_6746_126|KM_6746_142|KM_6746_145|KM_6746_159|KM_6746_23|KM_6746_24|KM_6746_27|KM_6746_30|KM_6746_36|KM_6746_54|KM_6746_72|KM_6746_77|KM_6746_78|KM_6751_14|KM_6751_15|KM_6751_8|KM_6753_9|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_number</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>subnumber</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsGreaterThanOrEqualTo></ogc:Filter>
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
