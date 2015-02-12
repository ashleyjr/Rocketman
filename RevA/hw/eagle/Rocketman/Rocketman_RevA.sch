<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="atmega168">
<packages>
<package name="QFP80P900X900X120-32N">
<smd name="1" x="-4.2418" y="2.794" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-4.2418" y="2.0066" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-4.2418" y="1.1938" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-4.2418" y="0.4064" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-4.2418" y="-0.4064" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-4.2418" y="-1.1938" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-4.2418" y="-2.0066" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-4.2418" y="-2.794" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-2.794" y="-4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="10" x="-2.0066" y="-4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="11" x="-1.1938" y="-4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="12" x="-0.4064" y="-4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="13" x="0.4064" y="-4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="14" x="1.1938" y="-4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="15" x="2.0066" y="-4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="16" x="2.794" y="-4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="17" x="4.2418" y="-2.794" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="18" x="4.2418" y="-2.0066" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="19" x="4.2418" y="-1.1938" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="20" x="4.2418" y="-0.4064" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="21" x="4.2418" y="0.4064" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="22" x="4.2418" y="1.1938" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="23" x="4.2418" y="2.0066" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="24" x="4.2418" y="2.794" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="25" x="2.794" y="4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="26" x="2.0066" y="4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="27" x="1.1938" y="4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="28" x="0.4064" y="4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="29" x="-0.4064" y="4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="30" x="-1.1938" y="4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="31" x="-2.0066" y="4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="32" x="-2.794" y="4.2418" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-1.1684" y1="6.35" x2="-1.1684" y2="5.334" width="0.1524" layer="21"/>
<wire x1="-2.0066" y1="-5.334" x2="-2.0066" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="6.3246" y1="-0.4064" x2="5.3086" y2="-0.4064" width="0.1524" layer="21"/>
<wire x1="-3.3782" y1="3.556" x2="-3.556" y2="3.556" width="0.1524" layer="21"/>
<wire x1="3.556" y1="3.3782" x2="3.556" y2="3.556" width="0.1524" layer="21"/>
<wire x1="3.3782" y1="-3.556" x2="3.556" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.6416" x2="-2.6416" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-3.556" x2="-3.3782" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-3.556" x2="3.556" y2="-3.3782" width="0.1524" layer="21"/>
<wire x1="3.556" y1="3.556" x2="3.3782" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="3.556" x2="-3.556" y2="3.3782" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-3.3782" x2="-3.556" y2="-3.556" width="0.1524" layer="21"/>
<text x="-6.1976" y="2.9464" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="2.5654" y1="3.556" x2="3.0226" y2="3.556" width="0" layer="51"/>
<wire x1="3.0226" y1="3.556" x2="3.0226" y2="4.6228" width="0" layer="51"/>
<wire x1="3.0226" y1="4.6228" x2="2.5654" y2="4.6228" width="0" layer="51"/>
<wire x1="2.5654" y1="4.6228" x2="2.5654" y2="3.556" width="0" layer="51"/>
<wire x1="1.778" y1="3.556" x2="2.2352" y2="3.556" width="0" layer="51"/>
<wire x1="2.2352" y1="3.556" x2="2.2352" y2="4.6228" width="0" layer="51"/>
<wire x1="2.2352" y1="4.6228" x2="1.778" y2="4.6228" width="0" layer="51"/>
<wire x1="1.778" y1="4.6228" x2="1.778" y2="3.556" width="0" layer="51"/>
<wire x1="0.9652" y1="3.556" x2="1.4224" y2="3.556" width="0" layer="51"/>
<wire x1="1.4224" y1="3.556" x2="1.4224" y2="4.6228" width="0" layer="51"/>
<wire x1="1.4224" y1="4.6228" x2="0.9652" y2="4.6228" width="0" layer="51"/>
<wire x1="0.9652" y1="4.6228" x2="0.9652" y2="3.556" width="0" layer="51"/>
<wire x1="0.1778" y1="3.556" x2="0.635" y2="3.556" width="0" layer="51"/>
<wire x1="0.635" y1="3.556" x2="0.635" y2="4.6228" width="0" layer="51"/>
<wire x1="0.635" y1="4.6228" x2="0.1778" y2="4.6228" width="0" layer="51"/>
<wire x1="0.1778" y1="4.6228" x2="0.1778" y2="3.556" width="0" layer="51"/>
<wire x1="-0.635" y1="3.556" x2="-0.1778" y2="3.556" width="0" layer="51"/>
<wire x1="-0.1778" y1="3.556" x2="-0.1778" y2="4.6228" width="0" layer="51"/>
<wire x1="-0.1778" y1="4.6228" x2="-0.635" y2="4.6228" width="0" layer="51"/>
<wire x1="-0.635" y1="4.6228" x2="-0.635" y2="3.556" width="0" layer="51"/>
<wire x1="-1.4224" y1="3.556" x2="-0.9652" y2="3.556" width="0" layer="51"/>
<wire x1="-0.9652" y1="3.556" x2="-0.9652" y2="4.6228" width="0" layer="51"/>
<wire x1="-0.9652" y1="4.6228" x2="-1.4224" y2="4.6228" width="0" layer="51"/>
<wire x1="-1.4224" y1="4.6228" x2="-1.4224" y2="3.556" width="0" layer="51"/>
<wire x1="-2.2352" y1="3.556" x2="-1.778" y2="3.556" width="0" layer="51"/>
<wire x1="-1.778" y1="3.556" x2="-1.778" y2="4.6228" width="0" layer="51"/>
<wire x1="-1.778" y1="4.6228" x2="-2.2352" y2="4.6228" width="0" layer="51"/>
<wire x1="-2.2352" y1="4.6228" x2="-2.2352" y2="3.556" width="0" layer="51"/>
<wire x1="-3.0226" y1="3.556" x2="-2.5654" y2="3.556" width="0" layer="51"/>
<wire x1="-2.5654" y1="3.556" x2="-2.5654" y2="4.6228" width="0" layer="51"/>
<wire x1="-2.5654" y1="4.6228" x2="-3.0226" y2="4.6228" width="0" layer="51"/>
<wire x1="-3.0226" y1="4.6228" x2="-3.0226" y2="3.556" width="0" layer="51"/>
<wire x1="-3.556" y1="2.5654" x2="-3.556" y2="3.0226" width="0" layer="51"/>
<wire x1="-3.556" y1="3.0226" x2="-4.6228" y2="3.0226" width="0" layer="51"/>
<wire x1="-4.6228" y1="3.0226" x2="-4.6228" y2="2.5654" width="0" layer="51"/>
<wire x1="-4.6228" y1="2.5654" x2="-3.556" y2="2.5654" width="0" layer="51"/>
<wire x1="-3.556" y1="1.778" x2="-3.556" y2="2.2352" width="0" layer="51"/>
<wire x1="-3.556" y1="2.2352" x2="-4.6228" y2="2.2352" width="0" layer="51"/>
<wire x1="-4.6228" y1="2.2352" x2="-4.6228" y2="1.778" width="0" layer="51"/>
<wire x1="-4.6228" y1="1.778" x2="-3.556" y2="1.778" width="0" layer="51"/>
<wire x1="-3.556" y1="0.9652" x2="-3.556" y2="1.4224" width="0" layer="51"/>
<wire x1="-3.556" y1="1.4224" x2="-4.6228" y2="1.4224" width="0" layer="51"/>
<wire x1="-4.6228" y1="1.4224" x2="-4.6228" y2="0.9652" width="0" layer="51"/>
<wire x1="-4.6228" y1="0.9652" x2="-3.556" y2="0.9652" width="0" layer="51"/>
<wire x1="-3.556" y1="0.1778" x2="-3.556" y2="0.635" width="0" layer="51"/>
<wire x1="-3.556" y1="0.635" x2="-4.6228" y2="0.635" width="0" layer="51"/>
<wire x1="-4.6228" y1="0.635" x2="-4.6228" y2="0.1778" width="0" layer="51"/>
<wire x1="-4.6228" y1="0.1778" x2="-3.556" y2="0.1778" width="0" layer="51"/>
<wire x1="-3.556" y1="-0.635" x2="-3.556" y2="-0.1778" width="0" layer="51"/>
<wire x1="-3.556" y1="-0.1778" x2="-4.6228" y2="-0.1778" width="0" layer="51"/>
<wire x1="-4.6228" y1="-0.1778" x2="-4.6228" y2="-0.635" width="0" layer="51"/>
<wire x1="-4.6228" y1="-0.635" x2="-3.556" y2="-0.635" width="0" layer="51"/>
<wire x1="-3.556" y1="-1.4224" x2="-3.556" y2="-0.9652" width="0" layer="51"/>
<wire x1="-3.556" y1="-0.9652" x2="-4.6228" y2="-0.9652" width="0" layer="51"/>
<wire x1="-4.6228" y1="-0.9652" x2="-4.6228" y2="-1.4224" width="0" layer="51"/>
<wire x1="-4.6228" y1="-1.4224" x2="-3.556" y2="-1.4224" width="0" layer="51"/>
<wire x1="-3.556" y1="-2.2352" x2="-3.556" y2="-1.778" width="0" layer="51"/>
<wire x1="-3.556" y1="-1.778" x2="-4.6228" y2="-1.778" width="0" layer="51"/>
<wire x1="-4.6228" y1="-1.778" x2="-4.6228" y2="-2.2352" width="0" layer="51"/>
<wire x1="-4.6228" y1="-2.2352" x2="-3.556" y2="-2.2352" width="0" layer="51"/>
<wire x1="-3.556" y1="-3.0226" x2="-3.556" y2="-2.5654" width="0" layer="51"/>
<wire x1="-3.556" y1="-2.5654" x2="-4.6228" y2="-2.5654" width="0" layer="51"/>
<wire x1="-4.6228" y1="-2.5654" x2="-4.6228" y2="-3.0226" width="0" layer="51"/>
<wire x1="-4.6228" y1="-3.0226" x2="-3.556" y2="-3.0226" width="0" layer="51"/>
<wire x1="-2.5654" y1="-3.556" x2="-3.0226" y2="-3.556" width="0" layer="51"/>
<wire x1="-3.0226" y1="-3.556" x2="-3.0226" y2="-4.6228" width="0" layer="51"/>
<wire x1="-3.0226" y1="-4.6228" x2="-2.5654" y2="-4.6228" width="0" layer="51"/>
<wire x1="-2.5654" y1="-4.6228" x2="-2.5654" y2="-3.556" width="0" layer="51"/>
<wire x1="-1.778" y1="-3.556" x2="-2.2352" y2="-3.556" width="0" layer="51"/>
<wire x1="-2.2352" y1="-3.556" x2="-2.2352" y2="-4.6228" width="0" layer="51"/>
<wire x1="-2.2352" y1="-4.6228" x2="-1.778" y2="-4.6228" width="0" layer="51"/>
<wire x1="-1.778" y1="-4.6228" x2="-1.778" y2="-3.556" width="0" layer="51"/>
<wire x1="-0.9652" y1="-3.556" x2="-1.4224" y2="-3.556" width="0" layer="51"/>
<wire x1="-1.4224" y1="-3.556" x2="-1.4224" y2="-4.6228" width="0" layer="51"/>
<wire x1="-1.4224" y1="-4.6228" x2="-0.9652" y2="-4.6228" width="0" layer="51"/>
<wire x1="-0.9652" y1="-4.6228" x2="-0.9652" y2="-3.556" width="0" layer="51"/>
<wire x1="-0.1778" y1="-3.556" x2="-0.635" y2="-3.556" width="0" layer="51"/>
<wire x1="-0.635" y1="-3.556" x2="-0.635" y2="-4.6228" width="0" layer="51"/>
<wire x1="-0.635" y1="-4.6228" x2="-0.1778" y2="-4.6228" width="0" layer="51"/>
<wire x1="-0.1778" y1="-4.6228" x2="-0.1778" y2="-3.556" width="0" layer="51"/>
<wire x1="0.635" y1="-3.556" x2="0.1778" y2="-3.556" width="0" layer="51"/>
<wire x1="0.1778" y1="-3.556" x2="0.1778" y2="-4.6228" width="0" layer="51"/>
<wire x1="0.1778" y1="-4.6228" x2="0.635" y2="-4.6228" width="0" layer="51"/>
<wire x1="0.635" y1="-4.6228" x2="0.635" y2="-3.556" width="0" layer="51"/>
<wire x1="1.4224" y1="-3.556" x2="0.9652" y2="-3.556" width="0" layer="51"/>
<wire x1="0.9652" y1="-3.556" x2="0.9652" y2="-4.6228" width="0" layer="51"/>
<wire x1="0.9652" y1="-4.6228" x2="1.4224" y2="-4.6228" width="0" layer="51"/>
<wire x1="1.4224" y1="-4.6228" x2="1.4224" y2="-3.556" width="0" layer="51"/>
<wire x1="2.2352" y1="-3.556" x2="1.778" y2="-3.556" width="0" layer="51"/>
<wire x1="1.778" y1="-3.556" x2="1.778" y2="-4.6228" width="0" layer="51"/>
<wire x1="1.778" y1="-4.6228" x2="2.2352" y2="-4.6228" width="0" layer="51"/>
<wire x1="2.2352" y1="-4.6228" x2="2.2352" y2="-3.556" width="0" layer="51"/>
<wire x1="3.0226" y1="-3.556" x2="2.5654" y2="-3.556" width="0" layer="51"/>
<wire x1="2.5654" y1="-3.556" x2="2.5654" y2="-4.6228" width="0" layer="51"/>
<wire x1="2.5654" y1="-4.6228" x2="3.0226" y2="-4.6228" width="0" layer="51"/>
<wire x1="3.0226" y1="-4.6228" x2="3.0226" y2="-3.556" width="0" layer="51"/>
<wire x1="3.556" y1="-2.5654" x2="3.556" y2="-3.0226" width="0" layer="51"/>
<wire x1="3.556" y1="-3.0226" x2="4.6228" y2="-3.0226" width="0" layer="51"/>
<wire x1="4.6228" y1="-3.0226" x2="4.6228" y2="-2.5654" width="0" layer="51"/>
<wire x1="4.6228" y1="-2.5654" x2="3.556" y2="-2.5654" width="0" layer="51"/>
<wire x1="3.556" y1="-1.778" x2="3.556" y2="-2.2352" width="0" layer="51"/>
<wire x1="3.556" y1="-2.2352" x2="4.6228" y2="-2.2352" width="0" layer="51"/>
<wire x1="4.6228" y1="-2.2352" x2="4.6228" y2="-1.778" width="0" layer="51"/>
<wire x1="4.6228" y1="-1.778" x2="3.556" y2="-1.778" width="0" layer="51"/>
<wire x1="3.556" y1="-0.9652" x2="3.556" y2="-1.4224" width="0" layer="51"/>
<wire x1="3.556" y1="-1.4224" x2="4.6228" y2="-1.4224" width="0" layer="51"/>
<wire x1="4.6228" y1="-1.4224" x2="4.6228" y2="-0.9652" width="0" layer="51"/>
<wire x1="4.6228" y1="-0.9652" x2="3.556" y2="-0.9652" width="0" layer="51"/>
<wire x1="3.556" y1="-0.1778" x2="3.556" y2="-0.635" width="0" layer="51"/>
<wire x1="3.556" y1="-0.635" x2="4.6228" y2="-0.635" width="0" layer="51"/>
<wire x1="4.6228" y1="-0.635" x2="4.6228" y2="-0.1778" width="0" layer="51"/>
<wire x1="4.6228" y1="-0.1778" x2="3.556" y2="-0.1778" width="0" layer="51"/>
<wire x1="3.556" y1="0.635" x2="3.556" y2="0.1778" width="0" layer="51"/>
<wire x1="3.556" y1="0.1778" x2="4.6228" y2="0.1778" width="0" layer="51"/>
<wire x1="4.6228" y1="0.1778" x2="4.6228" y2="0.635" width="0" layer="51"/>
<wire x1="4.6228" y1="0.635" x2="3.556" y2="0.635" width="0" layer="51"/>
<wire x1="3.556" y1="1.4224" x2="3.556" y2="0.9652" width="0" layer="51"/>
<wire x1="3.556" y1="0.9652" x2="4.6228" y2="0.9652" width="0" layer="51"/>
<wire x1="4.6228" y1="0.9652" x2="4.6228" y2="1.4224" width="0" layer="51"/>
<wire x1="4.6228" y1="1.4224" x2="3.556" y2="1.4224" width="0" layer="51"/>
<wire x1="3.556" y1="2.2352" x2="3.556" y2="1.778" width="0" layer="51"/>
<wire x1="3.556" y1="1.778" x2="4.6228" y2="1.778" width="0" layer="51"/>
<wire x1="4.6228" y1="1.778" x2="4.6228" y2="2.2352" width="0" layer="51"/>
<wire x1="4.6228" y1="2.2352" x2="3.556" y2="2.2352" width="0" layer="51"/>
<wire x1="3.556" y1="3.0226" x2="3.556" y2="2.5654" width="0" layer="51"/>
<wire x1="3.556" y1="2.5654" x2="4.6228" y2="2.5654" width="0" layer="51"/>
<wire x1="4.6228" y1="2.5654" x2="4.6228" y2="3.0226" width="0" layer="51"/>
<wire x1="4.6228" y1="3.0226" x2="3.556" y2="3.0226" width="0" layer="51"/>
<wire x1="-3.556" y1="2.286" x2="-2.286" y2="3.556" width="0" layer="51"/>
<wire x1="-3.556" y1="-3.556" x2="3.556" y2="-3.556" width="0" layer="51"/>
<wire x1="3.556" y1="-3.556" x2="3.556" y2="3.556" width="0" layer="51"/>
<wire x1="3.556" y1="3.556" x2="-3.556" y2="3.556" width="0" layer="51"/>
<wire x1="-3.556" y1="3.556" x2="-3.556" y2="-3.556" width="0" layer="51"/>
<text x="-6.1976" y="2.9464" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-4.445" y="-8.9662" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="7.9756" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ATMEGA168-20AU">
<pin name="VCC_2" x="-58.42" y="22.86" length="middle" direction="pwr"/>
<pin name="VCC" x="-58.42" y="20.32" length="middle" direction="pwr"/>
<pin name="AVCC" x="-58.42" y="17.78" length="middle" direction="pwr"/>
<pin name="AREF" x="-58.42" y="12.7" length="middle" direction="in"/>
<pin name="(PCINT0/CLKO/ICP1)_PB0" x="-58.42" y="7.62" length="middle"/>
<pin name="(PCINT1/OC1A)_PB1" x="-58.42" y="5.08" length="middle"/>
<pin name="(PCINT2/SS/OC1B)_PB2" x="-58.42" y="2.54" length="middle"/>
<pin name="(PCINT3/OC2A/MOSI)_PB3" x="-58.42" y="0" length="middle"/>
<pin name="(PCINT4/MISO)_PB4" x="-58.42" y="-2.54" length="middle"/>
<pin name="PB5_(SCK/PCINT5)" x="-58.42" y="-5.08" length="middle"/>
<pin name="(PCINT6/XTAL1/TOSC1)_PB6" x="-58.42" y="-7.62" length="middle"/>
<pin name="(PCINT7/XTAL2/TOSC2)_PB7" x="-58.42" y="-10.16" length="middle"/>
<pin name="ADC6" x="-58.42" y="-15.24" length="middle" direction="in"/>
<pin name="ADC7" x="-58.42" y="-17.78" length="middle" direction="in"/>
<pin name="GND_2" x="-58.42" y="-22.86" length="middle" direction="pas"/>
<pin name="GND_3" x="-58.42" y="-25.4" length="middle" direction="pas"/>
<pin name="GND" x="-58.42" y="-27.94" length="middle" direction="pas"/>
<pin name="PC0_(ADC0/PCINT8)" x="58.42" y="22.86" length="middle" rot="R180"/>
<pin name="PC1_(ADC1/PCINT9)" x="58.42" y="20.32" length="middle" rot="R180"/>
<pin name="PC2_(ADC2/PCINT10)" x="58.42" y="17.78" length="middle" rot="R180"/>
<pin name="PC3_(ADC3/PCINT11)" x="58.42" y="15.24" length="middle" rot="R180"/>
<pin name="PC4_(ADC4/SDA/PCINT12)" x="58.42" y="12.7" length="middle" rot="R180"/>
<pin name="PC5_(ADC5/SCL/PCINT13)" x="58.42" y="10.16" length="middle" rot="R180"/>
<pin name="PC6_(RESET/PCINT14)" x="58.42" y="7.62" length="middle" rot="R180"/>
<pin name="PD0_(RXD/PCINT16)" x="58.42" y="2.54" length="middle" rot="R180"/>
<pin name="PD1_(TXD/PCINT17)" x="58.42" y="0" length="middle" rot="R180"/>
<pin name="PD2_(INT0/PCINT18)" x="58.42" y="-2.54" length="middle" rot="R180"/>
<pin name="(PCINT19/OC2B/INT1)_PD3" x="58.42" y="-5.08" length="middle" rot="R180"/>
<pin name="(PCINT20/XCK/T0)_PD4" x="58.42" y="-7.62" length="middle" rot="R180"/>
<pin name="(PCINT21/OC0B/T1)_PD5" x="58.42" y="-10.16" length="middle" rot="R180"/>
<pin name="(PCINT22/OC0A/AIN0)_PD6" x="58.42" y="-12.7" length="middle" rot="R180"/>
<pin name="(PCINT23/AIN1)_PD7" x="58.42" y="-15.24" length="middle" rot="R180"/>
<wire x1="-53.34" y1="27.94" x2="-53.34" y2="-33.02" width="0.4064" layer="94"/>
<wire x1="-53.34" y1="-33.02" x2="53.34" y2="-33.02" width="0.4064" layer="94"/>
<wire x1="53.34" y1="-33.02" x2="53.34" y2="27.94" width="0.4064" layer="94"/>
<wire x1="53.34" y1="27.94" x2="-53.34" y2="27.94" width="0.4064" layer="94"/>
<text x="-5.6896" y="30.734" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.7846" y="-37.3634" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA168-20AU" prefix="U">
<description>Microcontroller</description>
<gates>
<gate name="A" symbol="ATMEGA168-20AU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP80P900X900X120-32N">
<connects>
<connect gate="A" pin="(PCINT0/CLKO/ICP1)_PB0" pad="12"/>
<connect gate="A" pin="(PCINT1/OC1A)_PB1" pad="13"/>
<connect gate="A" pin="(PCINT19/OC2B/INT1)_PD3" pad="1"/>
<connect gate="A" pin="(PCINT2/SS/OC1B)_PB2" pad="14"/>
<connect gate="A" pin="(PCINT20/XCK/T0)_PD4" pad="2"/>
<connect gate="A" pin="(PCINT21/OC0B/T1)_PD5" pad="9"/>
<connect gate="A" pin="(PCINT22/OC0A/AIN0)_PD6" pad="10"/>
<connect gate="A" pin="(PCINT23/AIN1)_PD7" pad="11"/>
<connect gate="A" pin="(PCINT3/OC2A/MOSI)_PB3" pad="15"/>
<connect gate="A" pin="(PCINT4/MISO)_PB4" pad="16"/>
<connect gate="A" pin="(PCINT6/XTAL1/TOSC1)_PB6" pad="7"/>
<connect gate="A" pin="(PCINT7/XTAL2/TOSC2)_PB7" pad="8"/>
<connect gate="A" pin="ADC6" pad="19"/>
<connect gate="A" pin="ADC7" pad="22"/>
<connect gate="A" pin="AREF" pad="20"/>
<connect gate="A" pin="AVCC" pad="18"/>
<connect gate="A" pin="GND" pad="5"/>
<connect gate="A" pin="GND_2" pad="21"/>
<connect gate="A" pin="GND_3" pad="3"/>
<connect gate="A" pin="PB5_(SCK/PCINT5)" pad="17"/>
<connect gate="A" pin="PC0_(ADC0/PCINT8)" pad="23"/>
<connect gate="A" pin="PC1_(ADC1/PCINT9)" pad="24"/>
<connect gate="A" pin="PC2_(ADC2/PCINT10)" pad="25"/>
<connect gate="A" pin="PC3_(ADC3/PCINT11)" pad="26"/>
<connect gate="A" pin="PC4_(ADC4/SDA/PCINT12)" pad="27"/>
<connect gate="A" pin="PC5_(ADC5/SCL/PCINT13)" pad="28"/>
<connect gate="A" pin="PC6_(RESET/PCINT14)" pad="29"/>
<connect gate="A" pin="PD0_(RXD/PCINT16)" pad="30"/>
<connect gate="A" pin="PD1_(TXD/PCINT17)" pad="31"/>
<connect gate="A" pin="PD2_(INT0/PCINT18)" pad="32"/>
<connect gate="A" pin="VCC" pad="6"/>
<connect gate="A" pin="VCC_2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Microcontroller" constant="no"/>
<attribute name="MPN" value="ATMEGA168-20AU" constant="no"/>
<attribute name="OC_FARNELL" value="9171193" constant="no"/>
<attribute name="OC_NEWARK" value="01M6891" constant="no"/>
<attribute name="PACKAGE" value="QFP-32" constant="no"/>
<attribute name="SUPPLIER" value="ATMEL" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="atmega168" deviceset="ATMEGA168-20AU" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="101.6" y="68.58"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
