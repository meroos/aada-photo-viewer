<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>geonode:stone_age_bone_artefacts_19711993cd6dc79588a1e87efde785c3</sld:Name>
        <sld:UserStyle>
            <sld:Name>SA_bone_artefacts_photos</sld:Name>
            
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
                    <sld:Name>Bone arrowhead</sld:Name>
                    <sld:Title>Bone arrowhead</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone arrowhead</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#1f6bc8</sld:CssParameter>
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
                    <sld:Name>Bone awl</sld:Name>
                    <sld:Title>Bone awl</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone awl</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#f9c131</sld:CssParameter>
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
                    <sld:Name>Bone chisel</sld:Name>
                    <sld:Title>Bone chisel</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone chisel</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#3496aa</sld:CssParameter>
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
                    <sld:Name>Bone fishhook</sld:Name>
                    <sld:Title>Bone fishhook</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone fishhook</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#c34f15</sld:CssParameter>
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
                    <sld:Name>Bone fishhook shaft</sld:Name>
                    <sld:Title>Bone fishhook shaft</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone fishhook shaft</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#645896</sld:CssParameter>
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
                    <sld:Name>Bone harpoon</sld:Name>
                    <sld:Title>Bone harpoon</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone harpoon</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#865032</sld:CssParameter>
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
                    <sld:Name>Bone ice pick</sld:Name>
                    <sld:Title>Bone ice pick</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone ice pick</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#d99036</sld:CssParameter>
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
                    <sld:Name>Bone needle</sld:Name>
                    <sld:Title>Bone needle</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone needle</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#cba8ca</sld:CssParameter>
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
                    <sld:Name>Bone ornament</sld:Name>
                    <sld:Title>Bone ornament</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone ornament</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#9e306e</sld:CssParameter>
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
                    <sld:Name>Bone ring</sld:Name>
                    <sld:Title>Bone ring</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone ring</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#f9aebd</sld:CssParameter>
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
                    <sld:Name>Bone spearhead</sld:Name>
                    <sld:Title>Bone spearhead</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone spearhead</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#97f0de</sld:CssParameter>
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
                    <sld:Name>Bone stick</sld:Name>
                    <sld:Title>Bone stick</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Bone stick</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#d08371</sld:CssParameter>
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
                    <sld:Name>Luunaskali</sld:Name>
                    <sld:Title>Luunaskali</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Luunaskali</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#a996da</sld:CssParameter>
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
                    <sld:Name>Luurengas</sld:Name>
                    <sld:Title>Luurengas</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Luurengas</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#fffbbf</sld:CssParameter>
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
                    <sld:Name>Other bone artefact</sld:Name>
                    <sld:Title>Other bone artefact</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>type</ogc:PropertyName>
                            <ogc:Literal>Other bone artefact</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>150000.0</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#e2c15c</sld:CssParameter>
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
          <ogc:Filter><ogc:PropertyIsLessThan><ogc:Function name="strIndexOf"><ogc:Literal>|KM_10087_1|KM_10122_0|KM_10310_1|KM_11369_33|KM_11369_8|KM_12251_0|KM_13067_30|KM_15194_50|KM_15218_135|KM_15218_224|KM_15393_2131|KM_16107_0|KM_16822_639|KM_16880_154|KM_16880_173|KM_17274_275|KM_17374_931|KM_17918_2|KM_18440_25|KM_18440_5|KM_19799_1033|KM_19799_1064|KM_19799_703|KM_19799_832|KM_2003_7|KM_2003_8|KM_20493_32|KM_21211_65|KM_21494_3|KM_21536_3677|KM_22028_0|KM_22031_0|KM_23246_43|KM_24741_0|KM_24750_950|KM_24925_1028|KM_24925_1033|KM_24925_1209|KM_24925_1281|KM_24925_1379|KM_24925_1575|KM_24925_1840|KM_24928_1704|KM_24928_2341|KM_24928_272|KM_24928_3041|KM_24928_723|KM_25797_81|KM_25800_1495|KM_26065_2048|KM_26071_62|KM_26432_545|KM_26544_62|KM_26584_39|KM_26644_2|KM_26837_3|KM_27960_36|KM_27972_11|KM_28216_136|KM_28640_2|KM_28756_0|KM_28825_609|KM_28917_1757|KM_28917_1873|KM_28917_2007|KM_29406_183|KM_29573_167|KM_29713_5514|KM_29713_5578|KM_29713_5621|KM_29713_5626|KM_29713_5628|KM_29713_5634|KM_29713_7196|KM_29713_7197|KM_29713_7287|KM_29713_7288|KM_29713_7296|KM_29714_637|KM_29903_298|KM_29954_10459|KM_29954_10460|KM_29954_10510|KM_29954_10511|KM_29954_10512|KM_29954_10513|KM_29954_10514|KM_29954_10515|KM_29954_10516|KM_29954_10517|KM_29954_10518|KM_29954_10519|KM_29954_10520|KM_29954_10521|KM_29954_10522|KM_29954_10523|KM_29954_10524|KM_29954_10525|KM_29954_10526|KM_29954_10527|KM_29954_10528|KM_29954_10529|KM_29954_10530|KM_29954_10531|KM_29954_10533|KM_29954_10534|KM_29954_10535|KM_30012_11|KM_30324_59|KM_30331_78|KM_30371_47|KM_30371_50|KM_30446_2|KM_30446_40|KM_30460_10428|KM_30460_11328|KM_30460_11409|KM_30460_11461|KM_30460_11524|KM_30460_11568|KM_30460_11601|KM_30460_11675|KM_30460_11688|KM_30460_11691|KM_30460_11771|KM_30464_16616|KM_30669_300|KM_30884_118|KM_30890_36|KM_30890_37|KM_31057_84|KM_31829_3110|KM_31829_3111|KM_32176_0|KM_32293_460|KM_32558_13|KM_32558_14|KM_32688_1140|KM_32877_5|KM_32990_1126|KM_33137_179|KM_33137_24|KM_33137_306|KM_33137_332|KM_33303_607|KM_33321_2728|KM_33378_59|KM_33456_543|KM_33456_544|KM_33459_271|KM_33459_272|KM_33461_305|KM_33461_306|KM_33461_307|KM_33461_308|KM_33461_309|KM_33578_342|KM_33578_353|KM_33923_2830|KM_33923_2981|KM_33923_3288|KM_33923_5781|KM_33923_5795|KM_33923_5838|KM_33923_5854|KM_33923_6071|KM_33923_6106|KM_33923_6821|KM_33923_6844|KM_33923_7140|KM_33923_7238|KM_33923_7436|KM_33923_7485|KM_34305_214|KM_34311_550|KM_34843_2|KM_35224_1162|KM_35324_1390|KM_35917_1031|KM_35917_1037|KM_36423_4953|KM_36423_5829|KM_6939_28|KM_9560_120|KM_9560_96|ÃM_561_52|ÃM_649_147|ÃM_649_158|ÃM_651_227|ÃM_651_228|ÃM_662_2458|ÃM_662_5095|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_numbe</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>subnumber</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsLessThan></ogc:Filter>
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
          <ogc:Filter><ogc:PropertyIsLessThan><ogc:Function name="strIndexOf"><ogc:Literal>|KM_10087_1|KM_10122_0|KM_10310_1|KM_11369_33|KM_11369_8|KM_12251_0|KM_13067_30|KM_15194_50|KM_15218_135|KM_15218_224|KM_15393_2131|KM_16107_0|KM_16822_639|KM_16880_154|KM_16880_173|KM_17274_275|KM_17374_931|KM_17918_2|KM_18440_25|KM_18440_5|KM_19799_1033|KM_19799_1064|KM_19799_703|KM_19799_832|KM_2003_7|KM_2003_8|KM_20493_32|KM_21211_65|KM_21494_3|KM_21536_3677|KM_22028_0|KM_22031_0|KM_23246_43|KM_24741_0|KM_24750_950|KM_24925_1028|KM_24925_1033|KM_24925_1209|KM_24925_1281|KM_24925_1379|KM_24925_1575|KM_24925_1840|KM_24928_1704|KM_24928_2341|KM_24928_272|KM_24928_3041|KM_24928_723|KM_25797_81|KM_25800_1495|KM_26065_2048|KM_26071_62|KM_26432_545|KM_26544_62|KM_26584_39|KM_26644_2|KM_26837_3|KM_27960_36|KM_27972_11|KM_28216_136|KM_28640_2|KM_28756_0|KM_28825_609|KM_28917_1757|KM_28917_1873|KM_28917_2007|KM_29406_183|KM_29573_167|KM_29713_5514|KM_29713_5578|KM_29713_5621|KM_29713_5626|KM_29713_5628|KM_29713_5634|KM_29713_7196|KM_29713_7197|KM_29713_7287|KM_29713_7288|KM_29713_7296|KM_29714_637|KM_29903_298|KM_29954_10459|KM_29954_10460|KM_29954_10510|KM_29954_10511|KM_29954_10512|KM_29954_10513|KM_29954_10514|KM_29954_10515|KM_29954_10516|KM_29954_10517|KM_29954_10518|KM_29954_10519|KM_29954_10520|KM_29954_10521|KM_29954_10522|KM_29954_10523|KM_29954_10524|KM_29954_10525|KM_29954_10526|KM_29954_10527|KM_29954_10528|KM_29954_10529|KM_29954_10530|KM_29954_10531|KM_29954_10533|KM_29954_10534|KM_29954_10535|KM_30012_11|KM_30324_59|KM_30331_78|KM_30371_47|KM_30371_50|KM_30446_2|KM_30446_40|KM_30460_10428|KM_30460_11328|KM_30460_11409|KM_30460_11461|KM_30460_11524|KM_30460_11568|KM_30460_11601|KM_30460_11675|KM_30460_11688|KM_30460_11691|KM_30460_11771|KM_30464_16616|KM_30669_300|KM_30884_118|KM_30890_36|KM_30890_37|KM_31057_84|KM_31829_3110|KM_31829_3111|KM_32176_0|KM_32293_460|KM_32558_13|KM_32558_14|KM_32688_1140|KM_32877_5|KM_32990_1126|KM_33137_179|KM_33137_24|KM_33137_306|KM_33137_332|KM_33303_607|KM_33321_2728|KM_33378_59|KM_33456_543|KM_33456_544|KM_33459_271|KM_33459_272|KM_33461_305|KM_33461_306|KM_33461_307|KM_33461_308|KM_33461_309|KM_33578_342|KM_33578_353|KM_33923_2830|KM_33923_2981|KM_33923_3288|KM_33923_5781|KM_33923_5795|KM_33923_5838|KM_33923_5854|KM_33923_6071|KM_33923_6106|KM_33923_6821|KM_33923_6844|KM_33923_7140|KM_33923_7238|KM_33923_7436|KM_33923_7485|KM_34305_214|KM_34311_550|KM_34843_2|KM_35224_1162|KM_35324_1390|KM_35917_1031|KM_35917_1037|KM_36423_4953|KM_36423_5829|KM_6939_28|KM_9560_120|KM_9560_96|ÃM_561_52|ÃM_649_147|ÃM_649_158|ÃM_651_227|ÃM_651_228|ÃM_662_2458|ÃM_662_5095|</ogc:Literal><ogc:Function name="Concatenate"><ogc:Literal>|</ogc:Literal><ogc:Function name="strToUpperCase"><ogc:PropertyName>collection</ogc:PropertyName></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>main_numbe</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>_</ogc:Literal><ogc:Function name="numberFormat"><ogc:Literal>0</ogc:Literal><ogc:Function name="parseDouble"><ogc:PropertyName>subnumber</ogc:PropertyName></ogc:Function></ogc:Function><ogc:Literal>|</ogc:Literal></ogc:Function></ogc:Function><ogc:Literal>0</ogc:Literal></ogc:PropertyIsLessThan></ogc:Filter>
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
