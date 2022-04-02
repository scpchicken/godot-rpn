GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      �      &�y���ڞu;>��.pP   res://.import/index.apple-touch-icon.png-5913b19cee45de7fec6217bb39388d63.stex  �      ~/      ��,ȗ9��xVk~�D   res://.import/index.icon.png-604c6ac5d9375e9e0a31055099640204.stex  p%     �      &�y���ڞu;>��.p@   res://.import/index.png-066a63414f814ad908a3883308f6f36a.stex   .     -      s��Ӗ����?����   res://Main.tscn @      �      �U����L�rt�	?   res://default_env.tres  &      �       um�`�N��<*ỳ�88   res://fonts/Dank Mono Italic [TheFontsMaster.com].otf   �&      ��      �:��DWh��&0R60   res://fonts/DankMono30.tres ��      �       \���T j�r�H(6�WV   res://icon.png   w     �      G1?��z�c��vN��   res://icon.png.import   `�      �      ��fe��6�B��^ U�   res://project.binary�     �      ��78�`4Zj�Gf\�O0   res://rpnHTML/index.apple-touch-icon.png.import �"     �      �l�y���`�י��$   res://rpnHTML/index.icon.png.import P+     �      ��T�@��F�F����:    res://rpnHTML/index.png.import   [     �      ����Y��+�t�(   res://scripts/CalculateButton.gd.remap   v     2       �a��'��.M�k�$   res://scripts/CalculateButton.gdc   �]           _��c����X�Sx�[   res://scripts/Input.gd.remap`v     (       � �ӯc�Ϛ]I].�C�   res://scripts/Input.gdc �d     �       ��v�HV^�Kͳ�=��$   res://scripts/PointerStack.gd.remap �v     /       xzj�O�4�J�Oo��    res://scripts/PointerStack.gdc  �e     k      �c`��e7�>�i���$   res://scripts/StackStack.gd.remap   �v     -       ��|:v��.U�����J   res://scripts/StackStack.gdc�k     J      xkp�t�+(��P�G/$   res://scripts/StepButton.gd.remap   �v     -       �Co���oWI�L���   res://scripts/StepButton.gdc@t     �      ���q<A�z���� S        [gd_scene load_steps=13 format=2]

[ext_resource path="res://scripts/CalculateButton.gd" type="Script" id=1]
[ext_resource path="res://fonts/DankMono30.tres" type="DynamicFont" id=2]
[ext_resource path="res://scripts/Input.gd" type="Script" id=3]
[ext_resource path="res://scripts/StepButton.gd" type="Script" id=4]
[ext_resource path="res://scripts/StackStack.gd" type="Script" id=5]
[ext_resource path="res://scripts/PointerStack.gd" type="Script" id=6]

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0.298039, 0.580392, 0.294118, 1 )
corner_detail = 20

[sub_resource type="StyleBoxFlat" id=2]
bg_color = Color( 0.639216, 0.329412, 0.329412, 1 )

[sub_resource type="StyleBoxFlat" id=4]
bg_color = Color( 0.282353, 0.282353, 0.282353, 1 )

[sub_resource type="StyleBoxEmpty" id=8]

[sub_resource type="StyleBoxEmpty" id=9]

[sub_resource type="StyleBoxEmpty" id=7]

[node name="Game" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Background" type="PanelContainer" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
custom_styles/panel = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MarginContainer" type="MarginContainer" parent="Background"]
margin_right = 1024.0
margin_bottom = 600.0
custom_constants/margin_right = 20
custom_constants/margin_top = 20
custom_constants/margin_left = 20
custom_constants/margin_bottom = 20

[node name="Rows" type="VBoxContainer" parent="Background/MarginContainer"]
margin_left = 20.0
margin_top = 20.0
margin_right = 1004.0
margin_bottom = 580.0
custom_constants/separation = 20

[node name="PointerArea" type="PanelContainer" parent="Background/MarginContainer/Rows"]
margin_right = 984.0
margin_bottom = 146.0
rect_min_size = Vector2( 0, 40 )
size_flags_horizontal = 3
size_flags_vertical = 3
custom_styles/panel = SubResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PointerStack" type="HBoxContainer" parent="Background/MarginContainer/Rows/PointerArea"]
margin_right = 984.0
margin_bottom = 146.0
custom_constants/separation = 15
script = ExtResource( 6 )
DANK_MONO_30 = ExtResource( 2 )

[node name="StackArea" type="PanelContainer" parent="Background/MarginContainer/Rows"]
margin_top = 166.0
margin_right = 984.0
margin_bottom = 313.0
rect_min_size = Vector2( 0, 40 )
size_flags_horizontal = 3
size_flags_vertical = 3
custom_styles/panel = SubResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StackStack" type="HBoxContainer" parent="Background/MarginContainer/Rows/StackArea"]
margin_right = 984.0
margin_bottom = 147.0
custom_constants/separation = 15
script = ExtResource( 5 )
CALCULATE_BUTTON_PATH = NodePath("../../ButtonArea/MarginContainer/ButtonVBox/CalculateButton")
STEP_BUTTON_PATH = NodePath("../../ButtonArea/MarginContainer/ButtonVBox/StepButton")
ERROR_LABEL_PATH = NodePath("../../ButtonArea/MarginContainer/ButtonVBox/ErrorLabel")
DANK_MONO_30 = ExtResource( 2 )

[node name="ButtonArea" type="PanelContainer" parent="Background/MarginContainer/Rows"]
margin_top = 333.0
margin_right = 984.0
margin_bottom = 480.0
grow_horizontal = 0
rect_min_size = Vector2( 0, 40 )
size_flags_vertical = 3
custom_styles/panel = SubResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MarginContainer" type="MarginContainer" parent="Background/MarginContainer/Rows/ButtonArea"]
margin_right = 984.0
margin_bottom = 147.0
custom_constants/margin_right = 5
custom_constants/margin_top = 5
custom_constants/margin_left = 5
custom_constants/margin_bottom = 5

[node name="ButtonVBox" type="HBoxContainer" parent="Background/MarginContainer/Rows/ButtonArea/MarginContainer"]
margin_left = 5.0
margin_top = 5.0
margin_right = 979.0
margin_bottom = 142.0
size_flags_vertical = 3
custom_constants/separation = 5
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CalculateButton" type="Button" parent="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox"]
margin_right = 165.0
margin_bottom = 137.0
custom_fonts/font = ExtResource( 2 )
text = "Calculate"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
STACK_STACK_PATH = NodePath("../../../../StackArea/StackStack")
STEP_BUTTON_PATH = NodePath("../StepButton")
ERROR_LABEL_PATH = NodePath("../ErrorLabel")

[node name="StepButton" type="Button" parent="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox"]
visible = false
margin_right = 165.0
margin_bottom = 45.0
custom_fonts/font = ExtResource( 2 )
text = "Step"
script = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ErrorLabel" type="Label" parent="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox"]
margin_left = 170.0
margin_top = 53.0
margin_right = 170.0
margin_bottom = 84.0
custom_colors/font_color = Color( 0.0392157, 0.137255, 1, 1 )
custom_fonts/font = ExtResource( 2 )
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="InputArea" type="PanelContainer" parent="Background/MarginContainer/Rows"]
margin_top = 500.0
margin_right = 984.0
margin_bottom = 560.0
rect_min_size = Vector2( 0, 60 )
custom_styles/panel = SubResource( 4 )

[node name="HBoxContainer" type="HBoxContainer" parent="Background/MarginContainer/Rows/InputArea"]
margin_right = 984.0
margin_bottom = 60.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Caret" type="Label" parent="Background/MarginContainer/Rows/InputArea/HBoxContainer"]
margin_top = 14.0
margin_right = 51.0
margin_bottom = 45.0
custom_fonts/font = ExtResource( 2 )
custom_styles/normal = SubResource( 8 )
text = " > "
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Input" type="LineEdit" parent="Background/MarginContainer/Rows/InputArea/HBoxContainer"]
light_mask = 0
margin_left = 55.0
margin_right = 984.0
margin_bottom = 60.0
size_flags_horizontal = 3
custom_fonts/font = ExtResource( 2 )
custom_styles/focus = SubResource( 9 )
custom_styles/normal = SubResource( 7 )
placeholder_alpha = 1.0
script = ExtResource( 3 )

[connection signal="say_stack" from="Background/MarginContainer/Rows/PointerArea/PointerStack" to="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/StepButton" method="_on_PointerStack_say_stack"]
[connection signal="button_down" from="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/CalculateButton" to="Background/MarginContainer/Rows/PointerArea/PointerStack" method="_on_Button_button_down"]
[connection signal="button_down" from="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/CalculateButton" to="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/CalculateButton" method="_on_CalculateButton_button_down"]
[connection signal="stack_update" from="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/CalculateButton" to="Background/MarginContainer/Rows/PointerArea/PointerStack" method="_on_CalculateButton_stack_update"]
[connection signal="button_down" from="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/StepButton" to="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/StepButton" method="_on_StepButton_button_down"]
[connection signal="update_label" from="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/StepButton" to="Background/MarginContainer/Rows/PointerArea/PointerStack" method="_on_StepButton_update_label"]
[connection signal="update_stack" from="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/StepButton" to="Background/MarginContainer/Rows/StackArea/StackStack" method="_on_StepButton_update_stack"]
[connection signal="text_changed" from="Background/MarginContainer/Rows/InputArea/HBoxContainer/Input" to="Background/MarginContainer/Rows/ButtonArea/MarginContainer/ButtonVBox/CalculateButton" method="_on_Input_text_changed"]
               [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             OTTO  �  @CFF ��&W  C(  �GDEF�R  �   xGPOS��     �GSUBr�h�  3�  �OS/2hѧm  0   `cmap[҈�    �head�   �   6hhea]f     $hmtx��g$  �  �maxp6P   (   name����  �  {post�� *  h        }�t�Ѳ_<� �    �    ��"���"
1            �# �&���
� ���          6  P 6   �   �X�� K�X 1^ *    	         �            UKWN   ��# �� �`  �    ��         J        >         	 >        G       % M        r       < �        �       + �        �      	       
 >       	R       [       a  	   |q  	  �  	  �  	  J  	  U  	  xs  	  �  	  V	  	  _  	 	 {  	 
 |�  	    	  %Copyright � 2018 by Phil Pluckthun. All rights reserved. |DCNTDank MonoItalicPhilPluckthun: Dank Mono Italic: 2018Dank Mono ItalicVersion 0.491;PS 000.491;hotconv 1.0.88;makeotf.lib2.5.64775DankMono-ItalicDank Mono is a trademark of Phil Pluckthun.Phil PluckthunPhil PluckthunCopyright � 2018 by Phil Pluckthun. All rights reserved. |DCNTDank MonoItalicDank Mono Italic C o p y r i g h t   �   2 0 1 8   b y   P h i l   P l u c k t h u n .   A l l   r i g h t s   r e s e r v e d .   | D C N T D a n k   M o n o I t a l i c P h i l P l u c k t h u n :   D a n k   M o n o   I t a l i c :   2 0 1 8 D a n k M o n o - I t a l i c V e r s i o n   0 . 4 9 1 ; P S   0 0 0 . 4 9 1 ; h o t c o n v   1 . 0 . 8 8 ; m a k e o t f . l i b 2 . 5 . 6 4 7 7 5 D a n k M o n o - I t a l i c D a n k   M o n o   i s   a   t r a d e m a r k   o f   P h i l   P l u c k t h u n . P h i l   P l u c k t h u n P h i l   P l u c k t h u n C o p y r i g h t   �   2 0 1 8   b y   P h i l   P l u c k t h u n .   A l l   r i g h t s   r e s e r v e d .   | D C N T D a n k   M o n o I t a l i c                    �   	 �                                                     	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _   | }  � � � � � � � � � � � � � � � � � � � � � � � � � � � � �� m a b f� p � k h� o g� ~ �� n�� d  ���|�    l � � w ` j�  �   i s�   x { � � ������� �� �  ���    � q��� z � y � � � � � � � �   � � � � �06 l234 r751 p   � �   ~ � � � � �#'+17>HM[gk~�7��(8��������������    " & 0 : �!"!^!�"""""""+"H"`"e%�%�%�%�%�%�����     � � � � � �
&*.69AJP^jn�7�� 
&5��������������      & 0 9 �!"![!�"""""""+"H"`"d%�%�%�%�%�%������������������������������������������������N����j�Z�8�7�6�1�����������������������������|�y�x�w�t�k�c���}�E�߬ߪߡߠߙߖߊ�n�W�T�:�(����!O!B                                                                                                                                                         &  &  & �& �& =& 4& & +& �& �& [& �& h& �& y& �& & 6& M& & 6& H& <& 9& X& :& F& �& u& R& _& P& u& & & & 4& & .& 5& 4& & 6& (& & *& & & 4&  & 4&  & C& �& 3& c& E& & V& & Z& k& G& |& � �& .& & E& & F& I& 4& & �& >& 1& W& & $& 5&��& +& ^& 5& & A& k& J& /& & A& �& �& 9& ;& �& E& <& & ]& �& � �& M& O& r& [� �& w& K� �& G& �� �& :& %& %& %& 6& & & & & & & & 4& .& .& .& .& 6& 6& 6& 6& & & 4& 4& 4& 4& 4& f& 4& 3& 3& 3& 3& V& 2& <& .& .& .& .& .& .& 	& E& F& F& F& F& �& �& �& �& -& $& 5& 5& 5& 5& 5& Q& 5& A& A& A& A& & & & & .& & .& & .& 4& E& 4& E& 4& E& & & & & .& F& .& F& .& F& .& F& 4& 4& 4& 4& 4& 4& & & 6& �& 6& �& 6& �& & 1& *& W& *& W& *& W& *& W& & $& & $& & $& & 8& 4& 5& 4& 5& =& &  & ^&  & ^&  & ^& C& 5& C& 5& C& 5& n& & �& & y& W& 3& A& 3& A& 3& A& 3& A& E& J& V& & V& & A& & A& & A& & .& 6& �& 4& 5& 3& A& 3& A& 3& A& 3& A& 3& A& C& 5& �& & ?� �� �� �� �� �� �� �� �  ��  ��  ��  �b  �s  ��  ��  ��  ��  ��  ��  �r  ��  �~  ��  �1  ��  �  �5& J� ��  �  �  �  �  �  �  �  & & & W& & .& & & 4& 6& & & & & & 4& &  & 0& �& V& 4& & K& & 6& V�  �  �  �  �  �  �  �  �  & �  �  �  �  �  �  �  �  �  �  � �� ��  �  & E& J& E& J& E& J& V& & R& & �& �& �& �& i& �& �& n& �& '& & �& �& & D& %& %& %& %& & H& +& H& & X& ^& P& W& ^& K&��& H& <& r& J& 	& 0& ?& b& 4& 5& &��&��&��&��&��&��&��&��&��&��&��&��&��&��&��& �&��&��&��& :&�&��& �& &��& &��& &&��&��&��&��& & H& $& $& $& $& $& $& $& $& $& $&& $&&& $& $& $& *& x& V&��&��& t& I& �& �& �& �& �& �& �& �& �& �& �& �& �& �& �& �& �& �& �& �& �&�L&��& �& �& �& �&& ^& P& |& �& & �& �& �& �& ^& P& g& �& ]�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �    �    &     ��  �� *                           p      f  g g  h k  l l  m n  o o  p q  r r  s/ 04 55 6J KK LL M2 33           
 4 V DFLT latn      ��         ��     mark mkmk                   & . 6     0     �    j   �      v  6 .  @   
    "   r:    �   a d  8E     :  @  F  L  R  X  ^  d  j  p  v  |   �   � ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: �X: ��   ��   �� �   � � � � � � � � � � � � � � � � &,28>DJPV\bhntz����������������������
"(.4:@FLRX^djpv| "   * 
 �      "        �      "   * 
 �      "        �      "        � Y� "   * 
 � Y� "   * 
 �      "        �      "        �      "        �      "   * 
 � Y� "        �      "        � Y� "        �      "        �      J                  "   * 
 ��      "        ��                �                �       UVYZ[\]^`aceghjlmn��  8F  JJ 33    F  L  R  X  ^  d  j  p  v  |  �  �   �   �  �  �  � ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: �X: ��   ��   �� 
 ��% ��� �� �  ����������������� &,28>DJPV\bhntz����������������������
"(.4:@FLRX^djpv|��������������������� $*06<BHNTZ`flrx~���������������������						 	&	,	2	8	>	D	J	P	V	\	b	h	n	t	z	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�






"
(
.
4
:
@
F
L
R
X
^
d
j
p
v
|
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
� $*06<BHNTZ`flrx~��������������������� &,28>DJPV\bhntz����������������������
"(.4:@FLRX^djpv|��������������������� $*06<BHNTZ`flrx~��������������������� &,28>DJPV\bhntz����������������������
"(.4:@FLRX^djpv|��������������������� $*06<BHNTZ`flrx~��������������������� &,28>DJPV\bhntz����������������������
"(.4:@FLRX^djpv|��������������������� $*06<BHNTZ`flrx~��������������������� &,28>DJPV\bhntz����������������������
"(.4:@FLRX^djpv| "   * 
 �>      "   * 
 �>      "   * 
 �      "   * 
 ��      "   * 
 ��      "   * 
 ��      "        �       ��       �      "   * 
 �>      "   * 
 �>      "   * 
 �      "   * 
 ��      "   * 
 �>      "   * 
 �>      "   * 
 �      "   * 
 ��      "        � Y� "        �      "   * 
 �> Y� "   * 
 �> Y� "   * 
 � Y� "   * 
 �� Y� "   * 
 �� Y� "   * 
 � Y� "   * 
 �>      "   * 
 �>      "   * 
 �      "   * 
 ��      "        �>      "        �              �:      "   * 
 �l      "   * 
 �l      "   * 
 �;      "   * 
 �      "   * 
 �      "   * 
 r)              c:       ��       r:      "   * 
 �l      "   * 
 �l      "   * 
 �;      "   * 
 �      "   * 
 �l      "   * 
 �l      "   * 
 �;      "   * 
 �      "        �      "   * 
 �l J "   * 
 �l J "   * 
 �; J "   * 
 � J "   * 
 � J "   * 
 r: J "    
 �l      "    
 �l      "    
 �;      "    
 �      "        �l      "        r:      "        �      "   * 
 ��      "   * 
 r�      "   * 
 ��      "   * 
 �      "   * 
 �      "   * 
 r:      "        �>      "        �l      "        ��      "        r      "        �      "        �I      "        � Y� "        �I J "        � Y� "        r: J "   * 
 ��      "   * 
 r�      "   * 
 ��      "   * 
 r      "   * 
 �      "   * 
 r:      "   * 
 �      "   * 
 �I      "        ��      "        �      "        ��      "        r      "�      �      "        �^      "        � Y� "        r: J "   * 
 ��      "   * 
 r�      "   * 
 �      "   * 
 r      "   * 
 ��      "   * 
 r:      "�      �      "�      r:      "        �> Y� "        � J "�      � Y� "�      r� J "        � Y� "        �� J "        � Y� "        r� J "        �>      "        �l      "�      �      "�      r:      "        �      "        �I      "        �      "   * 
 �� Y� "   * 
 r� J "   * 
 �� Y� "   * 
 �  J "        �      "        r:      "        �>      "        �l      "�      �      "�      r:      "        �      "        �I      "        �>      =       �l       ��       �      �      r:      "        �      =       �I       ��       � Y� D�       � J "        � Y� h        � J "        � Y� h        � J "   * 
 ��      "    
 r�      "   * 
 �      "    
 r)      "   * 
 ��      "    
 �       "   * 
 �      "    
 r:      "        �      "        �;      "        �      "        �;      "        ��      "        �>      "        �l      "        ��      "        r      "        �      "        �I      "   * 
 �      "   * 
 �I      "   * 
 �      "   * 
 �I      "   * 
 � Y� "   * 
 �I J "   * 
 �      "    
 �I      "   * 
 �l      "    
 ��      "   * 
 �      "    
 �6      "   * 
 ��      "    
 �      "   * 
 �      "    
 �6      "�      �      =�      r:      "�      � Y� h�      � J "        r:        x �   � �  � � / � � 5 �/ t  8F  JJ 33    F  L  R  X  ^  d  j  p  v  |  �  �   �   �  �  �  � ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: �X: ��   ��   �� 
 ��% ���  0 &  8      ?�  ��� ���    rDE  DE    
    ��   ��    � �  �   . 4 : @ F L R X ^ d j p v | � � � � � � � � � J� �l �; �I w J J) � �  ��l ��l ��; �� ��� � �� �� ��) ��  �I ��^   g g   l l  o o 04 6C   8C      2   8   >   D   J   P   V   \   b   h   n   t ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: �X:     &    �  L  8C      2   8   >   D   J   P   V   \   b   h   n   t ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: ��: �X:      
 �f DFLT latn "     ��        . AZE  >CRT  NKAZ  ^MOL  nROM  xTAT  �TRK  �  ��         ��         ��         ��         ��     ��   	  ��      
   ��        calt Jccmp Pdnom Xfrac ^locl hlocl nlocl tlocl zlocl �locl �locl �numr �    
               	                                   " F N V ^ f n v ~ � � �&.6>FNV^fnv~����������    �    �    �    �    �    �    �    �    �    ��    @ >\z����.Lj����*Hj����.Lj���4Zx���>d����@j���		$	B	`	~	�	�	�	�

:
X    	�    
    
.    
<    
@    
J    
X    
j    
t    
~    
�    
�    
�    
�    
�    
�    
�    
�    
�
�    �        .    @  �   J  �   J  �   J  �   J  �   J  �        �        �     �                   
                 
    �                                                                                   \   ]              ]                ]   ^              ^                <   ]              ]                ]   >              >                ]                                                                                                                                                                                                                                                                                    $                      $                      $                                                                          *                                            $                      $                      $                   $                                                                              ,                                            $                      $                      $                   $                                                                              .                                                                                                                                                         @   @              @                   ]              ]      ���������          
    !"     \ ]   #   < ] ^  �   ]  
 %   > ]   &     ]   '(        
 )      
 *           �          �     
 -           �      0/        12      @ ]           !  J  J           !  J  { x y z { | } ~  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 
!#%')+-MNOPQRSUVWXYZ[\]^_`abcdefghijklmn           !  J  3           !  J  3   +,-.   � �   +,-.   � �   �  J  DankMono-Italic 5� �q�q �r�s�t������r
�����tZ      " ) / 5 ? I O U [ a g m t { � � � � � � � � � � � � � � � � �'-3?KQW]co{�����������������#*16;HU\cny�����������������
+7>ELU^enu|�����������������(2CHLQX_cfkotz|~��������������������  %(/25AP\hntz�����������������%-8@IU\cjqx������������������ #*18?FMSZahov}������������������ )2:DNW`hpz����������				0	G	Z	k	~	�	�	�	�	�	�	�
	


#
(
-
2
7
<
A
F
L
R
X
^
d
j
p
v
|
�
�
�
�
�
�
�
�AmacronamacronAbreveabreveAogonekaogonekCacutecacuteCdotaccentcdotaccentCcaronccaronDcarondcaronDcroatdcroatEmacronemacronEdotaccentedotaccentEogonekeogonekEcaronecaronGbrevegbreveGdotaccentgdotaccentGcommaaccentgcommaaccentHbarhbarImacronimacronIogonekiogonekIdotaccentKcommaaccentkcommaaccentLacutelacuteLcommaaccentlcommaaccentLcaronlcaronNacutenacuteNcommaaccentncommaaccentNcaronncaronEngengOmacronomacronOhungarumlautohungarumlautRacuteracuteRcommaaccentrcommaaccentRcaronrcaronSacutesacuteScedillascedillauni0162uni0163TcarontcaronTbartbarUmacronumacronUringuringUhungarumlautuhungarumlautUogonekuogonekWcircumflexwcircumflexYcircumflexycircumflexZacutezacuteZdotaccentzdotaccentuni01CDuni01CEuni01CFuni01D0uni01D1uni01D2uni01D3uni01D4uni01D5uni01D6uni01D7uni01D8uni01D9uni01DAuni01DBuni01DCScommaaccentscommaaccentuni021Auni021Buni0237gravecombacutecombuni0302tildecombuni0304uni0306uni0307uni0308uni030Auni030Buni030Cuni0312uni0326uni0327uni0328uni0335uni0336uni0337uni0338tonosdieresistonosAlphatonosEpsilontonosEtatonosIotatonosOmicrontonosUpsilontonosOmegatonosiotadieresistonosAlphaBetaGammauni0394EpsilonZetaEtaThetaIotaKappaLambdaMuNuXiOmicronPiRhoSigmaTauUpsilonPhiChiPsiuni03A9IotadieresisUpsilondieresisetatonosiotatonosupsilondieresistonosbetagammaetathetaiotakappalambdauni03BCnuomicronpirhosigmatauupsilonphipsiiotadieresisupsilondieresisomicrontonosupsilontonosWgravewgraveWacutewacuteWdieresiswdieresisYgraveygraveEuroarrowleftarrowuparrowrightarrowdownarrowbotharrowupdnuni2196uni2197uni2198uni2199partialdiffemptysetproductsummationradicalinfinityintegralapproxequalnotequallessequalgreaterequalupblockuni2581uni2582uni2583dnblockuni2585uni2586uni2587blockuni2589uni258Auni258Blfblockuni258Duni258Euni258Frtblockltshadeshadedkshadeuni2594uni2595uni2596uni2597uni2598uni2599uni259Auni259Buni259Cuni259Duni259Euni259Ftriagupuni25B3uni25C7lozengecircleuni25CEuni25CFuni25D0uni25D1uni25D2uni25D3uni25D4uni25D5uni25D6uni25D7uni25DCuni25DDuni25DEuni25DFuni25E0uni25E1uniE0A0uniE0A1uniE0A2uniE0B0uniE0B1uniE0B2uniE0B3i.loclTRKzero.dnomone.dnomtwo.dnomthree.dnomfour.dnomfive.dnomsix.dnomseven.dnomeight.dnomnine.dnomzero.numrone.numrtwo.numrthree.numrfour.numrfive.numrsix.numrseven.numreight.numrnine.numrunderscore.moreasterisk_slash.ligabraceleft_bar.ligabracketleft_bar.ligacolon_colon.ligacolon_colon_colon.ligaexclam_equal.ligaexclam_equal_equal.ligahyphen_greater.ligaperiod_equal.ligaslash_asterisk.ligabar_braceright.ligabar_bracketright.ligabar_greater.ligaplus_plus.ligaequal_equal.ligaequal_equal_equal.ligaequal_greater.ligaless_bar.ligaless_hyphen.ligaliga1liga2liga3liga4liga5liga6liga7liga8liga9liga10liga11liga12liga13liga14liga15liga16liga17liga18liga19uni0338.caseNULLCRCopyright \251 2018 by Phil Pluckthun. All rights reserved. |DCNTDank Mono ItalicDank MonoNormal �  @ � � �
w��:Ekv�
JQakp|�x���4:GW�����)Q^����� 59Bnt�������!)-1;@FLQ^imty����������	 			!	5	A	M	V	\	a	e	i	|	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�



)
6
B
G
O
T
Y
_
e
p
{
��"���j��i�J��&=�qe���)��+k��P���U���>i�X�WiK:$�O�+�*��2t�z�1��Щ��h�WN[|a7Z���*��Q���@�Ȳcg<�}��������rg/�m�v6=�zU�����rg/�m6|�]��ȴ��pz|q�������xhp^��v��ʠ����������p�����
�-���$�Q��z
������"���Rfra��h�m�|[yno�i_��i�̽�����t�`���������g�R�E�rrvf{h�|����������zu���0o�lz[^v����������|�t�tv�a�V�y����E�m4fF\3��
��
��Es�@��2��2���Ѭ�5�A�3���2��2��@12E�N��1�=
��������̨���S�-=S]�Vz-�{�$Ѽ��ϭC6ug�&}K��j��r��������Y
��K�e��Kp
�g�,������������x�je
��|D������~D��d�^��}E��m��f��`ax������������������Y�dYV�(�tc^_b�Zv�\�������b�e^@�c�շ�ʩy�Zm^n`���E
Y{?\G,c��8��B����»cT�۟�~7�0���#�^o�\o���(���ܦ�rb�L�&7�q�q�.������x(RKn8ck��pSXx���������8����y��6�1S��1�5
�@%9���0j~G�z
�����q��,v������o���Z��agrlj��nE���#���|���������c�f�v�d�l�o�̦�ģ�=�yQq_`ve�h�[��������ޥ6Ny��&�Ǣp�j�jm�q�w��G
�J��������������Q��� ��������P���$?�[����	���m�G�,�k�uJE}^k'C��Q��������
�e=|7{N[4Dq�z�~�]J�����������d���Zo�vi&iJ^��o�{��!�@6{Nb@8Y�����u�B��������mE0�t�4�tAf
����:��v�#w���/��������E���g��t���M��� �{���%'�	�keE�j}Hz@/i��z�{�z�V
�Q����B��~y�~yw����pH����>O�#�:]Nt�`�5z�A��g�������	�P��������y�w�z?v����#`�
�A���gy�G���0ie
J
����B�8�!�(PbXiQ,Y��������Űg5����wY�D�+(�/p�*q҄
�JP
��f[`tQf�h�������D����������^������?�������B�]L�Q�H��`D�O��!��=����y����G���������}�����(�ȕ�@�%������������������������������8X���q�|�3���x�~zw����pZjbqi�p[��n������h�y�v�O��,wi�vu�i�����u\lM��|���㤿���������{�i� ��r��#
�8���������̫���T�-@S_%U���F���#�~
��v��w�G��i�~����\xvmz_��f���������1hh��~������o�upW{`<f�����2�mb�����b��c�:��,��E����4�t��t�?����ڲm�W��i�x������x�jjwxj\ض��v������v�
�µ���c�R�Q~���������v�sw[����21m�Urq����e������s~���bi��y��������{�jjuyi��ſϔӕ_�BFU\G�B��U��y����6�1R��1���o������h��wyjg�CH?,C{"�)v��wv�v�>��j��r���������t~��[}~�����=�y�t�r13E�N��1��mE.�r����e�i�Դ�����o�wy�����R�|���|�A�����Y~Qv��v�Q�x�j�\�u�������@�����������
�M
b��	sb��
s�~~w�����H�� �����(�dYb 0��s P�u����F������*��S��+�]]tjs�x��y������x�jj�uh��v�Q��1V����^��<n��g��`��͸ȓ������Y  h  	7 |  B  g  d  �  f  �  �  j  �  �  �  �  �  }  s  r  �  x  �  �  �  {  �  � �  �  �  �  �  �  � �  � �  �  �  � �  �  �  �  �  � �  �  �  �  � �  �  �  �  �  �  � �  � �  �  �  � �  �  �  �  �  � �  �  � �$ � � �  � � �  � �	 �  � � � � �  � � ~  �  � �  �    � �V o  �  A    u  i  w  v  p t  y kL  � @M � [W c �)6    / O �J�LZ���4CMd�P��Q��m�Zz������			*	:	<	E	�	�	�	�	�	�	�

!
5
9
C
\
d
f
n
w
�
�
�
�?����Xq��"���i����&/^ht��L~��U�9�����?H���#5P��$1?Hj{��GWgs���������F�����K���}�����/@Qhz�1?Ma|��)9Jd���.Hk����    3 C � � �!H!S!c!v!�!�"O"a"r"�"�"�"�##]#�#�#�$	$K$t$�$�$�$�$�$�$�$�%%y%�&&$&N&g&�&�&�&�'f'q'}'�'�((�(�(�(�)%)5)G)[)w)�*,*H*e*�+ +*+@+z+�+�,,,7,H,t,�---(-2-G-c-l-}-�-�-�-�-�-�-�..".3.C.Y.q.�.�.�.�//4/f/}/�/�00=0K0\0r0{0�0�0�0�0�0�0�1	11:1D1\1m11�1�2	22'2:2K2f22�2�2�2�2�2�2�2�2�2�2�2�2�333D3F3]3f3j3�3�3�3�3�3�3�4,40484�4�4�5M5i5�5�5�5�5�5�5�5�5�5�5�5�5�5�5�5�5�5�5�5�5�5�6666"616=6K6V6g6t6�6�6�6�6�6�77F7H7p7�7�88`8�8�9B9�9�9�::6:i:�:�:�;K;�;�<<7<c<�=B=p=�=�=�>Q>�>�?2?[?�?�?�?�?�?�?�@@ @3@F@Y@l@@�@�@�@�B#CoEzE�E�E�E�E�E�E�FF&F;FRFmFtF�F�F�F�G'G0GJGjG|G�G�G�G�G�G�HH4HRHqH�IIHI�JJ*J@JaJuJ�J�J�K]KoK�LL/L�MM?MdM�N
N$NTN�N�ONO�O�O�PP�P�QQzQ�RR?R�R�S?SvSxS�S�TT8T:TaTcTeTgTiTkTmToTqTsTuTwTyT{T}TT�T�T�T�T�T�T�~��v�ww����m�?���ѧ�64n�64�TK
uxj��w�7���^�
�e�������������v�;��c��4w��r��c���K��4F^�4���4G]�4C�O�R�cI�P�\�7���7�\�7���7�������c�����������y��A�=���D�_0w;Ly:x1�L�lX��i�g�p�\`�g�{È�X���� ��ƣ� ��\���������ur&����ű�əa�pQ�u����d��zD\dI}����|�py@����Z��~��j��G�žϔӕ_�BFU]G�B��U��b~���Ē�����xW�R�tt]�S�t�ĿΔԕ_�CFT\H�A��U��b���Œ�����xX�R�ut\��������d�rYr_ph�<�t|����������fF����rH�C+OP.�j�\�@:YdN�F!|�:� �¥���Hʢp�r�u����������MIc�ϕ�������W�M�Acccud�w������
�%w���v����(����f��3�=�r�.r�5���
���,�q��"�%w�������w�"S(���c�1�����5��.c���X\���'u�(�(w������e�
��N�n��v���w�L�
�i�����������ivxj��~����s_jS���u���զ���������{�j�m��B�m���Q~��r�c�Qw������1[��}���k~�������+��� �^o�Qp��%����"�M��`�?�%��O����G�����xh����!����������3uA�1mr��z���!�^�S�J����w�N��"���EdWNeC{�FӒǦ��G�y�$i��z
����������A��w��w�9�%�)�H�>���܉�$�)�[�1���F��7Hh?[�fʻ���ѮkW�~��������2���_���ٳbG�8O]-h�Q���[4>�Wb7Ej��mVmA��g��������m�U�ɪ������?��M>tZn�v�N��%w�e��0�̎�����?z��&���%?���%��rq�J���J�~�����1��7��������T(}$}SO:Rd��iRZQ��n��
������I��
S^vkw��f������C��ɍ~�����N��S�����kY�X� �!�/vq�M� x�1��������E��KPxij����������}��[��:\������ϭ�ۻP9�2~?H6�v�����`�;�
���'�A�O�H_�������P�H�%�A~�����`�$��]�7�֩�Θ��O�'&DU/z|9�E�n+fIJ}:,z�D�	������fĮaQ��RYUCjM�m���ɗû����1i�Ɩ������h�T�MK�L`3~��E������ZXv��~�����/���M� �H���(7�t�s�8��ȧ���e�
t88&kf��v�n��ۺL,{�O^gD`L;^���������h����h��y��������|�jiuyj�J��s
���h����Ejwyj�h�i
�������y�jh��jtxj��~����q_iT���u���٦����������|�j��l�����?���Z�����?���>z��.����J�����׋���(���׋��l���]�����ZgI���>���?�J���Z~�����R��2����/5=mUi�T��ӣ�ޮpJ�v�)�I�k�h���F�Fe��@��B���4�i��x��������{�jjuxj�~�����g����+�?:�+��Uk�F� �P�|�{��ȵ~���r�R����'�������H�s{/���vs�f0GD�v�t�1�������r����?�S��%k��Mq��⛶�����l�j�Rmqsl�
�78~�����-�+.������%`�V
�g����p��z�S��Q�P�������<�Cl�9nO52Lx�5���������������?����~�
������P,
F
k�}��$~������`���Q��;�[S�[n8BV��nXW]��l�������_�������<����w�5]
BH�B��=;j��~ B
~�������+=l�I���gz]|`�h���������"���j��i�J��&���k�IR81����Ú�>~[vVvWS�|ۥ�*��U���>i�Xx���)
~��������?
ɖ-
�Dj
:.�rH��`����H��A�Y
���H���%
NH���/
�
���0
�;��B��~��~`�$���m���"��B�"���Qw�����1����ë�����;��B�����C`�n�I�!��B�!�J�m��v�9����mD�A�m����;�������;���P ���F�c�p�c�
~���~wVG�e��z
������8�D~�ev�C�V`���|DLgJ^���E���#��������k��y�����*��/�O������w@E+Re��w��2�ɿ��޷:�u��0�.
~�Yv�O��6wVp�{�9
��
x
�w��!�F����������������FŘ����me~�}�}�}������V�O�
p�X�'_� K�uOt�,:�4ѡ�����Ĩ���l�k�� ����`���OxRYh�����u���ߟ�����y�02c
V��]��Q�/�P�D
�~V`X��x�Ӽ��άC6se�&{K����~��������h��y��������{�jjuyj��,�t"
�G��5�����h��y��������}�ijtyj����=��V�:�4B}laT[j��c}&c�'�������6~�������-�v�v�9�I�~w��� T�y�~�r�q������ˠ�����-hoqfv��s�act|bp~@d�������mf�M��������T¥����yD6xj�)�L���k��r���������)L��D8�o�z
��������V��k��s~��(�������h
``
r��~ 
~���~wV����|CMgJ_}:�Ⱦ��޹:�w�xAE+Rd��vx�k��x�����*��/�O���p�����3�������������������2��Ӑ��a~���V��(PbWiQ,Z��������ůg5����yY�C�*(�/m�*nф
����I#���^�\�lΧp�������B�������l�U�T9��:w���(
{��~�a~����
�{�6@
4
�
���o!
`4�l�X��a� J� @��o����o�
�p�|&�l���?�&�K-�KA����P��� �D��D��
�|�ow�L�o*
������y�o7
�)v���w�b������;_~8�O�f�Gb�vX*�H�[f��Cgw�Oz$�`��N�U��ɒ����ҕ�}�M�̗���ė�tƑ���Șƃ}��`�$����$���)v���v�E��ȓ�~�N�aaP�D�R�]�J�kP�O�D�e�Y�MRQ�T�춛��m����������)�����ϳ��Ǘ�J��
��PΛ��^��VYhKc�d�������8�ͽ·�]�cpiljW��3Iv��v���R�����i��y��������{�jivyi��U��t�5���5��������w��������M�6���D}*�b;� �5�Q�v}%g���]���`������+(IK |�X�P�N1~P�zJnFRE�Q�	����ѩњ��,���-�ƍ�֖�����wg����wY�D���z��R�L�W[�Cup}h�e�`�h�o7A�[��{����������D��MѢ���������|���a�7A�si�cfg�yl�gͦbE�@�a_FIp�ѕՖ����v�����w��`B�y�����>�#���Q�	�H�
�Q�{&�������������}��������?��o?O������+����:����]�7B3z�]�g�pBG`5�T���K�|�h��LP�][-MN��oZ\]��j�������z�q��Ϸ�'�{�,�m�@�|���Ɩ�����wa����o6�8��%�lwbMP������@�q�t�K����Ɩ������f�p�� ����Q��h�y�'
�;2
�H�Ƹ�u������]��/�?r�Br�+�����?��B�3��H�t-K����������?�w�w19+��8d�ov\Xy�Δؖ�����yj�����`�O7[B0~.�Q�ϼ�Ě��	���o�\
�C\
�m��-�	��2��i��|'�����Ȳ�����]�	�*�z�z�'��� �����6��U�/N��������B1~-~4?.��X��c�d>n�a�����r�q�����z�~��������q������s�p�{�m ���� ��1��0����1���ϒϓU�CDNWG�D��P��aw����������qZ�X�om[�ºv���w������Eu��5�T�5t�g���6���#�������� ���F�Y���I�/,}��`���G�DFr�t��<� yF���������g�%���h��r��c ������C
��	����^
�[_^
��
�Z�|
I��X�V<
���
���q��v��w�$������\xvmz`��f���������i��M���q���O�O?I�g��\�M������~u���
�8
�	|
I��X�V<
���
'�������2������{�ijvyi�i��y�������4��٨��g�YhDsS8h�̔��)�Hb��h?q�G�F�s�@�{�X��
�g��M�>)�v�O��,w5�>)I
�m�R)I
�n
�����gsmwm�K�
���+)I
�����rZ
�$�P)I
������������$[
���7�������^�������������pY
��K�.��H�����6r������v�^�6���������������������,c��8��B����»cT�۟�~7�0���#�^ot�9��	�fq&1
���������ܦ;�Y{?\G������^�b
�7��+������^�5��$+�M
�O
���i+�M
�W���`+k�g��M��$k5�~�$k�m�l�$k�����r*J
�;'
S��"$:
H�B��=;jb
R�* j5x�x j�O
��� j�n
�����K軆S
�R�� j�W�,�� �������N��g���(�^c�����b������&�~�Uv�ǮwV��e���X�t]�wu�r=r�#�&�TprZ�k���������"���j���!w�O�������U�����������}w��Н�����WiK:$y|��}�����b�Aw�j
b
��q"j
5�"��"j
�O
��"~���w�W���"�v�"w5��>/
�v�5��[��7w���1��6����@�����7E/V
���9ܼdR�L�Mc1���[��fv���V����+%C8�s`=�S���S����]V�|8��|7x#�7�w��c�t\Sxp��yeVy�������ݙ��0�9y�˕�����ڙ`�$N
V��r�/@���$
�F`CN
V��X�/,�;�($
�F`CN
ء��,��1����m$
�FhCN
�n
T���+KX�
Ra�Xgsmwm����w��k]^xVzD��*�d�/����ҽgI�}:�kf�Q9A:�w��x�E�ž�ƴFTCN
��V��Y��#
��d$
�FhCN
�����h��� ����uµ���c�RScdSR�X
��w�k]^xVzD��*���/����ҽgI�}:�kf�Q9A:�w�x�E�ž�ƴ�FOC~��-��:����B���i���:�g�*Ue{ev��e�VQ\rVh�T�����ϓb�v��&o{�	7�T����ëX��r�Ϸ���g�[unv_O��������a�}��	�����E��Qt^shmr�����ўބ���������w��������L�4�,��;�38�S�t�q%1
�������]x
�N��M��a!x
�X�/,���a!x
�[����21��M!x
������*J
�;'
S��h!r
�
�r�/@���"
r
�
�X�/,�D�8"
r
��1�
�,��1����}"
r
��
�Y��#
��t"
~������w���Ϸl�5IQ�S�w�hV���w�p;N�`���Y�J�@�p`�P�(5�x�x�/���2��I����V�K��#��6S��ߗ���ȼgP��L�{6^O��n
��k�)gsmwm��K��
5��(���s~���������h
j`
r�r�/@q�{ 
r�X�/,��� 
r�[�,��1��'� 
r�n
����+K軆S
�q�8 
r���Y��#
�� 
���������'t�i�N���i��tr�4�`��W�`1�zz�x�+/�)v|� �:�bc9�j�����������+���n�L����r�����������;��p���������yKA2������>��m�X�E�
�N��M�>!
`4�
�X�/,��>!
`4H
ء�����21��R!
p4H
��V�����*J
�;'
S�7!
p4�ow�X�/,�f>*
~����6w�Y`E���ц���P��i��������[�8RYg5P��ʹȯ���(�/t�*v&*�Wc��g�ow������*J
�;'
S�7*
I
��Z���
G�i7N
�V���f�&$
�FhCI
;�w���L���ԖOIc])N
;�wV��)`I���ԖG��$
�FlC�G��T����[$A�G
��K�;
���%��������G��W
��� �G��1yw�����p�Ԇ��������8D�8�o�;
���~y�~~����5�.��.��X�/,�J��.
~����������2
��.�������2
�0��.
~�����[�F� '7�i.��[�-�Q'S�%.
������[�F� '�T�v�Q�3�zb�pd2���g���������9��C�e�$�2��~�Yv�O���1XwVp�-�Q'h�X9
��
:
~�Yv�}��,��6wVx����������?J�ăb�]�a�x.y5�l��w�������������z����J����P`WiQ0]��������������İg5������yZ�C�((�/jx�*kЄ
�������M
�{
9�"+x
ɽ�A��
��_!�M
������2
�+�`+x
������E�C�h!�G��M
�����������?��;
��Aq���������������^�&���������w���O�+�*��2t�z�1������vp}s�xZ��n���������x�~zw����������������h�WN[|a7Z���*��Q���@�Ȳcg<�}�������M
�[�F� '����+x
�[����3
�\�Y!~�
���w�B��I���Ԗ�����P,
c
���wV��������ԖOI��%]�Q�/�P�D
~�
������2
�k����P,
c
��V�����E��)7�Q�/�P�D
.͙�
���},
���U��#c
��V�����������������������k�w{VExb�������o������/N�Q�/�P�D
�v�Sů���w��`E=�)���������E=�)_Q�g�Og��O��h�O�z
��������XL������O�v�v�q��'�VpX��m��n�~X����.�̫I:y���Ÿ��kֽ�Z���
��$r
ֽ�
��o�6"
�G����������}�������
�-���$�Q��;
��Azz
������"����G������1�������2
�*�t"
�����A[;
k�����rE�0�"$r
�
�*�"
.ͷ<���#.ͷ6��l#����w5�6�k]
~�����X��m��f��`��-.ͦ���w��yC?����P6#.͙�������-���#����w�[�F� '?� ]
~���ڣ[���C=
P��<�����Y�dYV�(�tc^_b�Zv�\�������b�e^@�c�շ�ʩy�Zm^n`ax����������������E
����w�����GZ�������mC�������R�����~�������my�������[��o�������������Y�dYV�(�tc^_b�Zv�\�������b�e^�+��r��o��|�շ�ʩy�Zm^n`���E
�v�"w5��k_�V��X�/,���z�s~��(�������h
``
.ͷf�r`;������9#.ͫ~~wV��k��s~��(�������h
�`
���#J�[�F� '�� _�������3
�P�r�s~��(�������h
h`
H��`=;�bWvuhrt��yg^d��{��ɿ��\�G��v�9�~wV����|SJrbnА�����1I�o����ഥ���ްI7e���cX�wqftu��}cad��z��Ͼϔ�Ǯ���
�i��j�{
��v rɽ���� 
j�7w���>
�,�h r�7w���>
��� 
~�TM
\�V���`�a��zw�u�M�
�km�ql���h������\�������ۚ����J�����x���Z���Wo`;ED���P����U��ӌ׌�=p�X~��-��>�V�V����5��Z�Z5H,�+u�0u�(������g��r�ŷ���g�eou_O������[����Cq�2�U�btsZ�?�b}��	����ո����8| �|V5W������h�{�������v������5�>)
�l�X�/,f#9.ͷe���)
�e�x#.ͷl�.�i&iJ^��o�{�Dq�z�~�]J�����������d���Zo�v�?��#o�[��c3
�F)
�l�[�-�Q'����9~����5��?
ɖ-
��:w�X�/,�'��(
{��~�a����������}�y�$�6�9��D(zz �G�t�~�p}<2zGc-e]��l^`�m�{��t.1
���������
T���?
�d�Դ���:w�����a(
������r)���������}s�r�w�\`y��}ehh��}�׷�����n�������~�����[�F� '�G��?
ɖ-
��:w�[�-�Q'0�!(
{��~�a��v�������#`�
�A���}q%1
���y�G��������
����{�6@
>x3x9�h�}��~�H�[�{s-���������~r�r�x�\_z��}ed���n��ώ�é�x�Zn^nb]x�Ð������v����[�F� '��v�
�G���E����A��r
�Cw�[��c3
�F4
@
�v�q�����������;�
�AN���Q�b�mg��m�������~��7��"�
���5�+���'�֘ΐ�>�k�k�o+Q��t�x�~�}��~8��V�Ҹ�ʩx�Zn^nb]x�Ð������������.���-������j
�{
�M��"H
�V��A��
�@!
p4j
:.�rH
�����h��� ����u[
�]�8!
~4j
�Xw���>
���"H
�XwV����R�"�����R�"��VN!
p4�G���
���:o����A[;
�G��U
��� ���zw�����p�z
������8DC����R]okW=b�ۛ���?Z���r� ��ɫ���~G�jbqi�p[��n���������y�}J�O
�"�&%
�
�[�,��1����&J�m��R/
�ow�[����21�TR*
J�����r*J
�;'
S�&7/
�
5��>0
������X�/,��>7
�
�����rE�f70
�����������E�E77
�
�[��c3
�F0
������[����3
�^F7
I
�[��c3
�F)N
���-�Q'D��$
�FhCk�[��c3
�I�$r
��1�
�-�Q'M��"
j�[�F� '��� r�[�-�Q'�v�^ 
j
�[�F� '+�T"H
������3
�vF!
p4�
½�y����Yw!#
���"H
��½V��`����Y���g�3Z
��P!
x4�
�����K� #
���"H
��V��v�إ�5*J
��+
�&�!
p4�
�[�e����=
����#
���"H
�����\=
P�J�-*J
��+
�&�!
x4�
�����R����A�%��#
���"H
��V��l���A�\M�R��U�5*J
��+
�&�!
p4.͙�����}�y-
?
�P��#3Δ��:w���(
{��~�a���py|p�������whq^��v��ˠ��������~�q.ͷD���9#.͙����
�{�6@
4
��Qqy|q�������xhq^��v��ʟ���������~�p�G����˶�B��=��V�:�4B}laTZk��c}&b�'������ ��[�>���w ��[�C��� �Q' ����w�`P
����Ԗ ����r{ ����RcdSR�X
 �G��H� ���R ��ǉǉw��	 P��T
 �w�J�����>
�����F���p��
�����F������/,����[����3w����ǉǉw�2�	 P��T
������.�������w�`Y�hoYZq���OC��R����ԕ�������{���������h�y�'
�;2
�����RcdSR�X
���w����b�>
����[������Q12E�O��1���1��������Vk�x{UExb�������o�����������������������.���pqy|q�������xhp^���y���ʠ����������p���a���C
���G��� ��zR���m��.�m����Q���_�w����P���������B�T���dZ���j��0�1�_��)��W�����j������^`;[�� ��������/��;[���:Bh�y�'
�;2
        �
�78�v����]`��g����q������w�t����D���ނK�`���u�w��wL��������.�����'����/����Q��F
j��~ � �����M�Ik�}��$�<H��"�D��V
��o��BH�B��=;���p��|�����'���'���������K���p�Q��Qj��~ �v����M����������3��g�����#��B
�����������>�n������~D�O������}D�������DH���/
�v������w�����DB�78t�&u�*�/�|<��������$��&R������y�TN.~���郫Wz��������Q��3�hț� N�v�����w��`Gh�rbC�
����DZ��"�|ή�uH^���;�5�^�������=��������������G�O��&�³�ٞ��p�@��!�$�
�llw�!�:�e'��G�N��nE��=���U������=r�Q�@s+2mk�����r*J
�;'
S��"$J�����r*J
�;'
S�&7/
         �v�]j�O�MC��w�j�_�hK���q�W�o�m�l�w�,��D�ү����M           ����Q��h�y�'
�;2
 ����Q��h�y�'
�;2
  �v�"wb
�l��%
�
�r�/@�d��&�v�"w5��>%
�
�X�/,��K&J�W��%
�
���Y��#
��&H�g��M�+>/
�ow�N��M�>*
�m����c�m��������x�w�{�m����m���Q�D�����
���
���ȓ�������UQ
�D�����
������i�|�����������������Ȓ��"�
���
���ȓ����������������z�i�j�uu�i�����t\lM��|���㤿��UQ
�v�-��Cw�k���
�
E�
C�)���)��v�L��/��Cw�g�)����
�E�
p�/�E�
l�H���H������/�M�0�T��X�p������p�YYooY~���i�x������y�jixxj�2c�3i�x������y�ijxxj��J�:�žДҕ_�BFU]F�C��U��b}���Ó�����xV�S�st]�	�[��F���j���u��u���u
��u
��	�0�l�����m�h�y��ü���p�SV|�).on���p�*���V��	�8�m�P������쨦��x�C��b�bY�d�]�SjU[^cd~��.����Q����Bc���N���Y������������U���T�	������cT�۟�~?�0�(&�.^a���k�z�y�{e~P����6�
���ܦ;�Y{H\F��v�ڷ���gE`Lrez�s�z�U��|�_�^�������]�������G�j�f�������e������
�Z!�N���q�Q�� �@%�
�8
��N���q�Q�� �@%�
Ư� ����,�ju��wloq����d�Slm
�Gh�(����������
���|
 �8%�
�v�����������א��z�|���N���p�Q�� �H%�v�D�
���K�`�A~���������]�B���+����
�.��
�������g��.���
��+���A�]�������~��v�D�
���KgY�.��
Q��+��Z�]�B�������~��v��w�����m�A�a��~�������A�^[���*�
Q���-�v�#��"w����~��������,� ��&���'0�[�,� ������~���/� hY�/����g��6v��w�������1�?�h��� ��Yh�1�?~���������1�<Z� �� �����1�<�������~��
�ȕw�Y�����������Vw�����|�y������|�|�����>������������z�{���w�N�W������a����w�Y�����D��O���Y����cb�����V��N��w������������
��v���{�|�������������Vx����b�������Y~�����:����*l\�^�����lj�Q�
4>�z�z�1�����T���D��(�����?_�ޖܗ�����qQ��sWI6������^b�GH�h^�Y��� �y�M�S�`FG�f��m��y���� ����|�k���7�������{�����w�������#|-8#hj��q�����k�d�_����6��7������Ni�1�ц��#�70�ц��#���������������H�a����������������z���E��m��;�m����i�v����(��A�����m������7�d�����Z�������_�?�T�TgdNw�]�R�C�NM}2){�I�ë�ʢP�gǌ�����8*Y�}��җ֤������s�D`AfnU���W�o�vѶ֬����s�E�?soV��#�����~�������X:yMu�T��f~]sn�M��ğ�ǉǫǉ���8 ��z�WRlYf�h��������Q�ȵ���a�gjmwn\��Ahu�*WRlYg�h��������Q�ȶ���`�gkmwn]��A�&�������D����4��]�G��@~P�*Y8 ��R*�|���A���,��������N���2��������s��)�e�������s�����3cV�������X��2d������Q������ w
v
���q�K��o
���
z��q��K��o
����
h���q�K��o
���
W��q��K� o
����
v
�q�K�o
���
4��q��K�#o
����
"���
K�4o
����
����r�}J�Gw
�!�}��QK������ua
�uQK���|���0a
�0QK�x�8����a
��QK�3������a
��QK�������ba
�bQK���i���a
�QK�e�%��Fa
�Q�g�3�����a
���q���|��v� �|�y�|�t�ӳι�̺�  �|�� ���\�c���\�����\�c���]�����] ��$���}
�y��}
 �#�|���\�u����] �%���}
�y����\ �$���y
\�v��y
]�v��}
 �$�����]�y����\  �#�{���]�u����\@ �%����
]@�x���(�
\�#�|�y
]�u��}
�v��}
�����\��c���]�q�ܨЗاЙݢ՘اИݛ{�l�  ���1�L��-8��8b ���s�/�Fb�Лq�����d�%�g
��g
�;�d^�)�^��^�3�\���
���
d�$�
���
��=�kb��s�)�b��s��b��s�3�b�
�����d�$��
���
�=�lg
�)�g
��g
�2�\���	���	d�$�	���	��=�k^�)�^��^�1�Tb�q�����d�&�
��
�8�Ob��s�.>b��s�>b��s�6�İȰ��ǳëͰ��ǲ��j�^�   ����;�
�
'�
�'� 0�� P�' ����_�O�М�i��
j��
j��������
i�j�l��������i������������e�u��i���������������������i�k�t�����������������i�f�{�y
j���y
k���y
j�i���y
j�k�t��i���������i�������e�u�������k����i������������l�s���i����i������������e�v��
i����
j��j���y
j��i�f�O����
.����.���.��i�"�������"���
y�Q�5�e���Fa
��q��K���g�qL
�q���g���z�qL
�����������L
QK� ����d
� �|��~
Q�������L
�t��L
QK�Fw
� �|��~
��Q�� w
v
��v
����������������YQK�F������Y� �|L
QK�F����v
��v
��� �|�v������T��^������v��w������s�����i�������n�N�2�N�i�N�3�N�v��w����D�e�������q�����^/�^�,�]��]��^v�Q�2��
���2��
��=LK<;�K������K�>�~Om��ǩ��ǩmOOmlO�v�~w&
�b��_� x&
��@��
�b��v�� l&
��@%9��t���5
�L�����7&��^v��v2�%98&��^v�Q�2��M�K%98&����&
���L��v�~w����� ���� ���v��v����{6
������5����_����5��7&�������^v�_����P����R%98&��^v�����%9��S�� �������������7&�������^v�����_�|%98&%9��S�� ���������Q�����i������q
���o������������������������������(����l�u�h�o}w{uyuq{Fcjwrwywnma�[�)v�w�������E���\T��j�?(��Q��s����������@����w��\�����k����������|�j������w��xs�iln�urnt�h�fw�kyxb�d��e��v��V��������~�v�tz���������������i�y�]��y������������������������}���s{w�QL���S�����l
�1vS�����`e���Y�h�Y�d����Q����������"�|�1v������������������Y�h�Yr
��
����2
�*�t"
~��������DOJ34�J����ݗ�^�@-�4ڎ
������.�C�c^��v��w������]xvmz_��f���������q����r�O�O>I�g�~�]�L������~u�~����H���p��������j�i�luXx�j���yg�g�n�^c{��yozk��y��ç����t�m���������T�Rgdu|��
����
X�V<
~�� ����Y�!�������sV�^�my`kt�
~��͸ɔɓd�Skm
�Fg�(��~���խ�������yq�lAM[D��9N��b�Ӻ���ȔY�Lcx||y����������'�s_t������������th�e�no\�v�������y�|��������
��n��g�QSera��h�m�|Zyno�i_��i�̽�����u�_�������e��rrvg{h�|����������zu���0o�kz\^u����������|�t�t~�կ���:�srz�����ǺԖ��Ɣ\�CJWdR�Q��c�������|ThiNsz�����j��yN�rwm|ibx���������������`DOK25�J����ޗ�^�@-�3َ
������.�D�c]��v��w��������]wvmz`��f���������q�����O�O>I�h�~���?��������\�M]]uis�y�������t�� ����}�
�o��������i�j�ltWy�k���yg�g�n�^c{��xoyl��y��§����u�m���������T�Qgd�u|��
�)�jU������X�W<
��� ���������������
ju�
��d�Skm
�Fg�(�������խ�'� ���xq�m@N[D�9O��b�ӹ���ǓZ�Lcw}|y����������'�s`t������������sh�f�nn[�v����R`�y�|��������������5����g�RRfrb��h�m�|[yno�i^��j�̽�����t�`�������f��sruf|h�|����������{t���0p�ky[^v����������{�u�s���կ���n�.trz�����ǹՖ��œ]�BJWdR�Q��c�������|T~hiNty�����j��zN�qwm|jbx������������H�����m������c�;���� �
�P���(w�w�������1Z��|���k�G��(+�c���8«B�� �y��n��N�o��;�fv����wVp���h����$Hq${�X�V�YP�zj)��lU��T�Y�\ x�l������ip��W��\�W=Pv�ȕ���ǕǗ�{�O�͗���ϕǗ͒�p͖�����;�\v��͋wV`���P�͖
���������i`��B��X�B�X`��B�f���h����s
�EK
txj�����i��y��������|�jiuyi��ER
���h����i��x��������|�jjtxj��VK
txj��VK
txj��Y��i��y��������|�jjtyi��VR
�VR
�.����o��������Z����l��JC1�	���"��r��/�b���@������������������]�.���}Q�mR<�:~P�S<����G-�b�������z���G���+���r��q��TQ�j�:��������:�R���o���΄���V �&�������H��V@c��w��������y�ddrvd���S����xtH�w�w�w��] p���1[��|���k�@�̀
���pN�n��;������������������P�$���T�Q��W�i�T��ɪ���������������*��ƕ����O�O�`N�t�P=��W�ǫ�I��e�I�O�G�h�L�l_�D�;��B͜vV��`�
�~I�Q� �B�i~J��L��X� �B�eO�p��,���N�
�,��P��i������,������.���������������(�������������
������zs��y~P��<�z���9����`��gH�0�6�P���gOe���Q�6�*/�J���k��O�r��o�������:e����o?���o���i�:��                   ��v�bw�u�$:�3W����_�k��~��o��6����G��7�	�
��
������ �  C p � � �:QV�� (m��Hu���� d�4SYp����$7n~����������+INR[rw������	"&+1;?CGL[cjnrv������������			&	2	;	D	J	N	a	e	q	v	~	�	�	�	�	�	�	�	�	�	�	�	�	�	�
	



$
0
8
>
D
H
S
^
i����+��,�B���+/�)v�2v�%���9c��
������⌵Jz��yKA2DC���R]okW=b�ۛ���?Z���r� ��ɫ��Zn^nbWz�і�۶�)���8�}X�u8n� ~J"w�E�ӷ�ʩh�y�*�:+
w�k]^xVzD��*��/����ҽgI�}:�kf�Q9A:�w�x�E�ž�ƴu�N��U�z�y��D�k4X-\3�
�����Er�Av�Ә�2�������4���3���2��Ӧ�A����� ���� ��6
3k
p���������0[�7�1J�T������p�}�h�P�dm_`mN~{���v�v�|�kP�R�V
�����������6�8r.���2�k��������F����U8{P`+������`<|qC>�(;�"k�a� ��F����G��2aCmScm[�yT�|ɪ����L�!����h�y�'
�$��wHD+)g��;��N������zP�̸�RV�H�.���fk�hj���)����)��$�6�9��D(zz �G�t�~�p}<2zGc-e]��l^`c��{��������
T���o�upW{`<f�����2�mb������������L�4�,��;�3��K������A�r�����?�/��d�������'����G�u��Q��N�}��Q�����M�}���0�F�u���������~r�r�x�[`z��|fd���m�Trr���J
�0ie
=
P12E�N��1>x3x9�h�}��~8��V�Ҹ�ʩx�Zn^nb]x�Ð���������&
����������i�������Q��z
����������������+� �ç����t�m���������T�Rgd�u|�o��������i�j�ltXx�k���yg�g�n�^c{��yoyl��y������k��u�������������z��������������J��t�k[^xVzF��*��/����ӼgI�z:�of�R8>:�s���&������`�0�V
�g����p��z�S��Q����{�{�|�������<�Cl�F���$��&��+jXYHjbqi�p[��n������G�!�HX� �H�g�
�B������1R�"�����R�"��'�a���Ӗ����˃�s���ߟ啸�+���'�֘ΐ�xyjx������-������H���V?�����`<|8{P`+�����iض�����n��Zq%���������~r�r�x�\_z��}e\����ƸjP�o�#YgPnN��lvXcE@B�-����v�����w�"�������Ef
�j`E�V
�z
����q�w�����O_
'��Y
��K�e~U
�Thi
i��x��������|�ijd
v
�����^�~W
[�E�W1��Y�hoY[p���OC��R�����ivxj��~����s_jS���u���է���������{�ji��y��������|�ijtyi�Q�Ʒ���a�gsmwm�+[_tQg�h��������S
]��=�jl��ev�C�~wb��i}��������z``}ygV
�*J
�;�k
�
�
�2��z``}ygi}��������n�g�y��ý���o�SV|�).on���p�*���V����yC?�����쨦��w�C��b�bY�d�]�SkUZ^cdQ�8�o����q
����@�*��v����ȏvYjA
?�b�q������2�y�~�
iA
� �|s|~������ǉǉwV�z�q�_
l
~�i��x��������|�jiuxj�y�b���ē�����xW�S�tt\E������
~���������Z�i���Y�N���p�Q���
\�������i�|��������������'+�c���8«C���y��n��Q�Ʒ���c�rxI2rX����}��u�*������1���`d�������������QhScdSR�b����w��Y��j
����Cw�������~���=������Q��/�R����A�I
���b��c��7&%98&U�������
�"w�u�E�ſ�ƶ�� 0��i PH
V�S3vد�Hw�b�q��C@l�C��G����~�����v��w�
�����	��xkoq��sW�^�mx`     [gd_resource type="DynamicFont" load_steps=2 format=2]

[ext_resource path="res://fonts/Dank Mono Italic [TheFontsMaster.com].otf" type="DynamicFontData" id=1]

[resource]
size = 30
font_data = ExtResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�   �            b/  WEBPRIFFV/  WEBPVP8LJ/  /��,͘i�F�[�?�m"�?A�Β�b��m#������DMI�!��s����m�<wo��D�?$Y��i���j��$�L3���C*�Q�u����ͤ�n+��K �$���m��?�vBDL *�H��ȶ��N�:��'��L�F�lRh�7��G��{z�����Kn#I�$Z���|�(��� ���r�mkۛ��#$@���ޓ齞���C=�3�Nlnr�6�"��{w���mm��ֶ����LH�v?����-�$���Y��H�ÝoI�,I�l��գ������o����;Å|�dI�$Y�����3���o�O�	DI��6}�u"�7  |��[��W�A���=�y��+���r�v+\!�M�@����X'�����k��u��6�x��̗7 ���7�B6P��ɧg5kРFBDD�� ����F@� ��u9�\6�m>��?��x#�Z��s�z��i�����C߮�-�@�	�$@B��vM�A�z�#�}ھk�56�>0�6�} ����7rQ^.���k�)���'=jԶ��.��0P�mנ�el������a��~h��� �������Z�>>���>b�t!�Hb`�́� 6�.!�R��ա�]�֔3��x����0cFx9�t�ǝ����~�����c�A�T��@'� $f��)��~*��[(	,�����T�/L�x9���;;<Ǐ�	����2�	�$R���E��N�-T�I���V��_�c���/ ��a_��y������m�AbȐQ�IЉ$HL�Ĵ�$ ����Z������Ɲ&̘���zŋ�^<ի��1n�q`��(C:)c��4��Ȧ�I1:`��+�l�I_~h�C�CM�5��򱃈�����T��m�S�X:��@��'b:AL�O"�Щ�(��U>��]~H;4b�5���������׺/����)KY�))�2��^3�$bH;,��� /,Gw5���-��.P�ǭ��#�EYb)CRR��3;5���lhwζ��sWl��#�[|�ub`�,�2� ��zZJ�
+۹����C�=G����Pe %�"E
����mI�d�������u��#��*waȐQ����2a�[8vY��z��+��nZ�b�
[��' h'FǄz�X�^�@����GMt�I���CZ*,��4�&"H1�D�N�M'`��~�%��u��U�������hǦEը� `��		� &����a*Hh��
��D":3D'ha���+��@��HLH�@�W�wȇ���$4������S���"jԀP�҉��v��
e?C{Yu��v�Mޗ���Ԛ*uؾ`�7`�A��
aܻ�� y���/��̺"���D��V�55�B��j@	�(q_�!�|��\�z����
�h@S���3�C5f���2b�Ď=����ЭY�&�P� ���5�=K��zSM|�)~�NI=CU���R�6w�.�ꎂ#��,[������5��SE��mm���p�n�	Ro��a7P�˗.E[Mͩ�8��:{��y���Ԏ4%#��L�rϬ{���Wk׺[��r|I��R4fD�Ą�t^��*v��J�z%�Ȼ���ҫ��&���,��b����֪��d%��k�����Oye��=�שc�f;�ܾER��ެ��I���e��Ym�~�W��4y�C��M��m�Y|�~!K����2[��z���wZIi7�FMn^�fް��Y[�-���v�/FV���&̘�Vn";���[�j�V��WO�����}��Y��u��ޑ��R˽D+�z�z�}v�,M�	��ݴ����{�=?m�,Z�Z���u���Nz�յڪ�K]���U��?�KLM�D�JNwF~��Fv���:�w�;ԁ��]l�کG��T�zg��8�SD���,O����?G�ɦ���̖]�/t��I�ى^X�ֶؙ�\׮~o'�d'�+)9}��a]'����ݱ��®��+|������ڵNX�N���N�zY��ɫ������͘V���f+|(�?�i����\e�w��v}���r�Wb*�ߣ.����s$fy�1����&n����\|�,�8j�,�nK��-Qvi�4�L�w���~��6��#�u�3~W<���u��[�^��V��$Ǘޠ?�A�l�N�X�9�X04߹�^,��N@cHu��91EeĈw��+ү�Z��i܋;�8��]6���s�2R+~�����r~q�ߗV��*Sx���P�r�Nt��W �/ ���FT�svH�(���?�Es��r5�4�u���No�2�Uy���uJX�����lg�S(SK.�2���Tk��up�F�)s�b��0����܆K�SV�z�[P������fҤQ�)G��0�2B�Nx�2����*W/�e��@?���-{I�x��V��~??o�W�v)ʔE��$`b�����h��3 �Bd���V��ϓ�<����W)r����������8���q��
 �76r����p?��'�"(����@��Pn:#� -����>�T2jj	н�!LX�[(=�'�\���.!�a',	ݝE4��o���%��1��껀�y�IF w���a�`�b�'�:4�p =av��;��A�:��z�A�    �Ai�gޒ�=-�,L ���s�鍂'L��>P��ZU�(ȍ'^@� ��V����h),p�&D/��n%�QTP �9Yu2��/�JI"�,E��>�$ν�{B|!���DA���d��vf�^H���Zu�"��¹��	�@O�{Ӏ��r3�6��C��t �ĺ], >��DZ�9s��P�Բ)`���@F�R�����-�RO<ܳ1�"�Hأ�V0��	�I�ї�ͺ@˽�Bl ��_�G"1����1{
���MLͭ���!!�A
R�L�0��x$�[�Ɩ ��#{��c����6pcRL��lL�\��n&[0"����� �~~���04�|�'�A<}�_0H�Gߏ�f��b�ul;�� ��b��O�'���N/�^�$2����tNu<�m����dkY��2}�� ��;u/�������u����R?y�x3?}�FR�����]������PP����O~���?�}���G�kY���O1ߦo$	`f�����l껆����R+)�޺�m�Yg������D�d�c;^������X��	h#F��O���9Ё9���.�ڲ�z�pa2����v�^�_X(޷~/v�c��QW��DԦu]��lKK�����)=���z�k��F}�q�nl��n@��'�I�WHj��߶����7�#㾠�9�ڃ~�����������[­��p쎷��k�[6p�k��zï�z���������0^��n��J�����ew��0��%������J�9-��}]�5�N�����b��死G���b�x�6�z[lž��,��f̦�d
 ��bK[���=-���
(a�A܂��W�aB�i��*���n�7q�e�~mw��.��N;�?�Iǝ*����m�#�ϗP�!�^�򽟟�W�f���F��TKlx7����˽}W��\oT�ē]�a�����G+��~��dm��������rw����j׾k\�zX��Ӏy�XG����Z�O�2`H�rK�/��~-�';2��~5I�^/�֎��Uٺ��|���˻�W��z��^P��UXLB���i��;X����:���Ͻ�Q˸^��b�W���b�ܚW�R[՚}������&�aՆ��}{˓Ws���ϛ�B����L���$�����f��f�F"p�Dm�[��o۵��q���sp$�Q�K��]�u�٧~8!����u8����j�������W a���n۵Śy��Nو�sEIiр�@�N�׿�o[W�m�Z���o΅ x  8�인��U��6c����}���7�xn�s}�s�j�ڭ{�6MY��Vl�]o����e�]fԓjf����_ۯ��g�۾W�%<�7�z����_��H�t�w�7[Y��B�(�|���}��\�Je��N��}f��C��%F�%�0�9'�<�?/܂@�?�8��M�}DX][3�D�Ny��v���ՖZ���(ٍt��{}��.��<W����Y�Ď��<�S�~7��5?���`y�W�O����w��Yؒ��nrӌ�nm����"d�Ȟ
(�c�W����߲����~��sC;��.x�m�i/�nc�{��Y��A��ʋ;�0�+F,x wl��nZy5t3͠}�W�5��y�}o8�*��,a�}IHX�;Դ��oX#���C2Ѐ��δ�w!UQY"�Ⱦ$P�S�q����6|�[��	��D��**�ح���S6��FMK����+4�@��T�RKj�w���s�W^_XE%K����?�����@�����q'�/̽h�h4�� ��|���,[���:K��}ay�t��[�z�\�s�&P���]�'/;�k��e�G�<�׽FM�Y�O�{��2��^�X�S�[�%��h�S�XiGS󴷕�s8�kU�ܒ7�N��óm}�hN_�0�7L�|���[Y�uK�z��9\���Y/y�7��Ӌ���_�;�[ԗD	�nx�L��YЭK����T�����l����W&�������K*kx��Rk�w���h�M\�>-�P���m���^0�����~���{_��}�k���y{g�rN'�'&[�杗�Ӿv�7~�^k�~���%�n|7��߷�����[��r�|�@�Y�߷��l�}g�F@��_�]_�*��bB����Z4��S�^�G���L������|�,[�k����讨�� ���Ů3�M�FA|�0gf��ac�9���[�}k��|h�&#`  ���'�AF{�sP$�/��.�X�|�v���|k��V8m�}�v�٪u�{c����Y*?�E��mr���ˏ��O��7+;���u�:�>s�L���V>�g:*Y4��g_�[���Oݻ?�4e"G�����ߦ��6�{�gGӺ[)y#�MW�q����2x�߯|�'m��3οzW�R;��9}f�J�|.?��'9u����~׾���?khaw��]�3fkӦ��2�2}:�ju)�Ȥ��>iNq��X�&�%'�tD�0 ��q2�Î�<�'�Q�K��t�'�"` n��靟N��pB�2����Y�����@``���`�r������A��ߵ;�j}�Q]�_y�ԨV���Sp���]yK�W��~����21Yɥ-=�I/�5�W'�h�c$��<(�@��M?���积��]�ꗝ��='UR�2ed��Q����ާ^�i���&=^�{�����Jw���Җ^y/���|]��~�${��@*���oyWd�mv�%����)�o���7x�n�k�1���  H؝�H���?a���j��N���X����lS/��s�{ͯUk�Gn���l��������߫_5;���W��{�!b�?w��o����}��t?������77ܻ����[��^�������u]�h�2����h��*����g��gb�k������_;v����j��̚ �{��;�޷����~��j��н��� v���M���+=�������ޮ3]`� 
�̾��v���߀��tZk�ό�+o�=��v�vfo�$�(��{m���_���������ӫՍ	+k\��po��N��+��)���v�~VZl��J�����[#�v����wQ~��*��D����tqڷJ�����SN�HH:.?���M��5�����W�vn\U��s��9X��u��2�.�{e/p]���[�JU9G�� �����f��}�\y7��]/�Z��^���]z�׼���x�~5�	G��p������\�ݱ;Q�v�>���?�
,_W��;��;���G��������ZM�	G$���l�2|�wv�]~�-�XOXP�i�dd�;/�ƚ9 @�����m\����o��������#��0��@`$������:yG޵[�^C+��+���ԙ@�]N&���&rx����2./?��
�@ �xJﳱٷ�Q��;|Cy�nH�]P�y�[r�qu�/�w`�d���׀���>?���pOZN�B�2/[���D"/������S&��=g���7=S�t�����=5�E�f���%�]^�f:l��Yo����9)�dqx��+�$LD��&��=r���F�a������Ąh��L�	,
8Q4�ӊxEq	O @X�݈��K �MH�+JL,�v�r�P�-�&�������#���#�)E8������ݟu~�W��%̙��=�����V���
�>��Vܜ��5�$������o�����y�W^I[��w�:���^�B+:{� C^�]����	��i�E���p�|ɶ�V�{־��M�=o���Yb����_��^r�2��-�)�.�\���Bݷ������%yZH��Q/��1�6����/�~�g}s�F��*�/��efk��Vן�L�W�V���P���6u\���P�R�!m�>��mn�GK+C���獠��tn�&���������_�����O}����u���������׿�����V�TYy��v��U�B3ߏo�~a.����\�T�JM�x���������۾oY	�f��g��[��I�:}��������'���[^}�Oj'��N��;���������|^ݫ�L�J��ʵ�2�ps���qź�wyڸL�JJ�w���y��e�^lm	�n����S��;G�;��Nw�����	'!
y֏ݭ�������я��#�1�a�4 ��[P��{/��q��Iw����7b0]$R87��6��L���DBY��w�S���5���p�پ��������5�)���3ן������������[��7k���:�HҸ�X+�$\�[	9-��;�f�����?�T:��w����{�{���0a|e��n�s��5[��0�������~������?�>�j��_����?o�����d�g�MA'H  �)F�G��Y���n��@/�?���)�4��v���|{�]��x�6!CM���S�Ƶ�;��$�	��I�O��'5��B��]����7����LJ��dw3#�u�~�:�3Ώ����s�������L~�'!!�; ��y�-�v�y�hҸ�8�^���w#Sc����i�^�� ��D	��w�ۋt�,۵_��^�
���^@MV����*P�}�@�<���\#��%ͽ �PQ��RAw6a�u��	 ��]YY��$m�_����W�0�ȹha�����U �����pBA'�����x�UjW 姜x}p%�f�G��0�`��A���\�&�WM�@*(���>�-��<�w	|���DP^֚����>��E�G#0���(ɦP�%-���~�  ,�
C� � ��U�7�D� ���f~�y�wP�ye38]�yh��eB���� Nmu����	�q���� �BA %	�$K�e�;6���6Ұ_��Y"�W p�y�C^��*�f�ǟ`1Y�� �F���RM��٦�]���y���a(�BL$7E#h4	 $0  `�f��W�>.�@B�>$�ͼh����-��@ �x�  pa_�����V 	Cb=��3�1IjJ\�t2� cd�4 ��{˷+}`��.5���ce���9����������3?oA ���0 ����᭫A�RS
���bO�s�F�JR&IЕ� 55 ��&Vϕ>B-A�F���c�����������f~�  �dB� k��2u���EcSS҅��0�q�9���[�, B�b!�GWJQ�������v�0#��>$��!{���]��K,	�V�����+�pC��@	�S�ʻ��t`h���zv��y��{�܋��F��h�������
�>�I�6"O�>��x��_�}�ׇކ{���vl�`�Ʌ�^r��q'�F�(V��( x�N�jv��[��r�ɡ4��+V�%qr>`�0@,�C` �]����>���Ԯ޶��8�|��KM��TT,[��
#I�����t @�W�[ ��D����!$�kg�m�����s�V����fr�p��Bܑh� �9�`4�+��E�=+H�������������HD@�� F ���}�S�ڨ��ƽ�s�3�ʻ�{ыݝF�#�qNWM����ܪ�n�x��@,�vkJ��@��D�D
�E�0�TkW��j��P��0�ɯ� ���4����<N.$$�F�$ЍI�I����Fzۼ��)���V�^:n81,MB���#�ևID� ������x�td�S��q�Uzi��p��.���c(t'K�B�]Sݴ��z�>��<�<^nw !�,��$�E9�|p���INN�sh0�;@` �$51Y$7�%����M�D��t?$�[����^S�����d�*�@'X��FK�k�AA�xb�  	! B�8�j^7?}E�����2��J+���-`$ $&ޱ��v��["��u�����SNI���S� ���޽�-��3�ye���� y�s�
�8-�T73��F@��でNlz7�|�7z���4y'; �BV�~]��w{@4s����O��=j��C~+�8'Ͻ
 �C��u��w����a@��-��tu8y��Ĉ;�N�ɚ��3}NDO ��~�T�  �|�u�w=+׹�� h�`w�T�6�U��T�ⰹ����2��ګ��=5M�������T�K�,	#�@h�*U�rBSRp�0��M&Oq�� ,�7�b!��0��q�T�8�&J.���LF��P�k��"YJ���Ɯu��Z��s�,��eO'�0��������ԩ�4��)@���)b�^b�$��7�n�,m"� �ըw�@ ��d��Xzʖ?	�E&����Rk�v/��=��q���<�˱����X�s���i\��Q�v��_x�:Y�)r�A#~��938���U��:H6Y"���P��O3��^< ���
#��ɮ���"ʾ4 +�ݫ٩�L��npys%�8u&N��h������Es��`i]�5?k��T�rhN��(����]!!uG��y*��o��H� �@ �  �F�ZviK�;u7/�o�[��k�5k6hPir���9�8\i�@���kug��2t�Ǹ�vj��\�Z�x� �܋ 1z�ÌL$ �7��{�����K �d��a ��QF���#CF ��5�7��s�VC[�S�(�����Y.�o�e,}�w�n�r��nկW��W�^�U��@��	 ��{�9��F	н5�v^[]����=�%  H$��c##KAӖ�,��gXb�3|4�~]��[ט�z�F���s�n���ah��ݹ�;�؅���^�g E���DP(诤�ȁ �?w��,nϫ��L�q�Ӯ�w�W،	A<(��ۗ���P�:rڒ�}�ۏs��Ly�g�'��k���3Ь���[���s��#%��cvZ/ zr��qo��m��-9���90����*L��	�x8���*=u��M�~��e��~���rK��T�PWq��`��^��t���������h���S���w��{=�e�^��u�M4�Ά4�i����[��@��|A�t�/;j�6Z��]
)6�L	�c#�[}�;��f�N�W�qG��'�	�K�4|�ϰ����z�����i�8�&O��Um]�
s$:�G�ݨ�;C/��3zB:�%7�O���w������x�7cf���W]m�l�
7aHY�;��G� �`�Xa��dT�T2��B�[�%_m;�QX��Ҟ�w������}Go���qw��.K߁����iK.Oy+���}�o�_��_~+���`3�����_�,�m�m�^j^�yy�Wz���,}��,I�����(���u�������-�
��M�I�$@n}�25s����
t����һ��O%KDOvdD�Cb!��%2\�D�D�t�SB��s���}�mݷ�=ʄt������ �&�l��w�ׯW_a�����nz7��*KM�����y@#�R�'��ӥ3����e^;�ٮ3w�_�ն�f;�f*H=��"��ǯ�?�3�o�������Q�yK�.v�����<18�>�Lb�IR�J��<e��g�h������WQ��vl3
+P�+Bn��µi�}��}u�OH�Z��p��V>��n�������y� ����BnA�@�)� ��K�@�F	h�� ���L!�
x9y�gXv���js�_�&��rl �@�x�2����Z����u�jm�&���mz7�y���a�x��1��ɼO�[�)������o"���Q4M@ċ�<�o4����(����f������nu�v��)�	s�0gb0x�h����{{^_oS�`J%�w�}�4������vx�����13� �l �p/�[��-O@)�,�&�&�H ��G u�d�db�+��o��ؒ�O����V��M��dSc`ϼ��l�Z?�쮟�lo����������������o��l���,S*�ҕJ� AM �h��& ���)-(�^�)���g�����и]����͵��֧\�JM��xbx��Y�}���z����_o�n��ח}����7 y9�J�@M		�#D�@ &"�0//
��\�-���1���Y��vng뫡���mf�25�t* ���}����u�|��e�~�ݪ��[_޲����MwBz	���h4���NnXr(�   '� _h�����;''��=���Vw�����2�m�
d�|� ��[�f�n۵��߳�ö>]! P.�9)i�i�#�_��Ι{�p��u� ��-!���)#s���o�Rh 	�b�w}�ݾ[w���t^�����_�S��(!��)A� 6Μ|A13����RĔ2�)W��e�.  �vT* 4��쐙Y������	\{  (��H `މ���~�/  H�����()�~�b�~� ` +�� &@D�=��� �����	��p� �0Bb��=zR��Jx��'#"���;�c�����g�Ci�G@O��K���Ep�3
�jԈL���B�P,$�B�0�w@�DHC������`�1a��k4h�6�с�ɦw  k�
րfM��>�iɞvH�p�ր-R;����!Ӄi���	�q�T��]�~�a�ޟ�	6�@L�O�����U��J�I��۱i� ��A���+���cmJ0A'�� ����vlTIJT�M��m�R�����|�	�H�s;ǦP�*�+fR�j�b�δ�K�E�b��`�ĐD1���D��c����Dg��P�b���lg�0�����̫.�iR�d�;�U�zlP�ΌtƀU�k�v�	@'�֖i�؉'%%���Q��ƫ���[�a��R�A>V,� 1�vb��!1�����h'�h�i_I΃��w�{W[Sc�������gο+ؘ���0�ɧjUne[<v��1bttb���ްii�Ʀ�&%%9��L75]�Å�c:5��z�l~��!�ô']6Y�cŚ�*��d���E�dO�N�(A��l&5���M�6��!�&Ld~�7]�x��+ȫ5��*H0�0���!.��>�X%�$S4���X�`�Y-�l�s��IWp�ן�#2Z\a��$Jhiǆi�0�3ha�$E��56�bv���l�/�����b�؅&T���R��Y�I����ʰB���3&ddT��}��é .8��5^�x�qp�.�&���,��m	�]�%T��0J��cG�t�ؑN��n�L��c���Z�T� 8`��~ ��|U0?��ì�m�vu��}z�v-��� !""L�pĄ�q��v�Vsz�xw���pQ>�o ��ܹS��&lp�m�ۣU�Z�4��V�4	0c��Z��n�޷�v��"��'�����/v~+5 ��tw�)(, ��-�N���ݙ��.�+�6=���|y   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.apple-touch-icon.png-5913b19cee45de7fec6217bb39388d63.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://rpnHTML/index.apple-touch-icon.png"
dest_files=[ "res://.import/index.apple-touch-icon.png-5913b19cee45de7fec6217bb39388d63.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.icon.png-604c6ac5d9375e9e0a31055099640204.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://rpnHTML/index.icon.png"
dest_files=[ "res://.import/index.icon.png-604c6ac5d9375e9e0a31055099640204.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST   X           �,  WEBPRIFF�,  WEBPVP8L�,  /Õ�(n#����3�1�V�){#F��S@\~r#�r*��|L@@
,i��̬��Hۦ����mۆM1e�d(۶������mѶm|����i�7Xr]�m�-.ڻ���HN�����k۶�6�c�sѣ�= E��yDP�$ٴm�1�m۶m۶m۶m�]}��m��Z��m�H�����7�>�[�$K�$۪�����e��A����I��tn��?�F�$mꦾ�W�6g۶mo���l�l�,�mg�t��&�J�$In�l�xX�`��o۶)O���W��������Z��.��0C�.����iw�pm$d[8��
$�8.��mۛ4����� S	��*3� n��۶�D���W��L�c�-L����mڶ�}�ڶm�~߶m�?���m۶����$I�3���s�������?�?��������O��?��������O��?��������O��?�������L�2�j:�����N�+�4v�_������jӜ�|[��Ri�;�4��N�#��0�+V)O�����$������l����Gj�b�Ze�Gj<��Qk�]�l��G�c �A|�S�|��@g�	9��]���b����~�x��#`5��A
�o?{n?M��2 &p	���7�d�HX�l�n=N\��מ�(����U�   c�f�� (hn����=]��z��:�7�fA�v�Bx� '+���|���(nDQbenQp �| ��E��+5N_<�L6�|� 'p��B�C����/�>��$&���L  �qw�AX�q �~4�+q�55*���ơ؁0T�AK��l�ܢ�ֹI�I%�[  �y(�%p^L�-x�K�I[�fnQ�Xm�h��� 2yp�q���E�7��w�  �	x �}l�,�����L�v" �?�l������ᖀ�P�(��p+�����D�$`�^�-���C%AJ��֡  �Ɓ� [Ƕ�R-��S�6�5X.Ri)����6�6��
)r�o6�JK��5�/�un�����-  ���� ��8� ;������s%`�^�Dw�,����OW�7c�Zhݽ3�5�U\���:���#��<�����t}$�g�_��۽(JBsm�`�"۵�Bp{}�{>�k��n���wzzgg[w5���҇�t)��������]O�l`�S[y	64��^�gͺK%G��lI��z&���G���I�">�f��x�:pԞ��	�a}E�_���7��@=�����M��z��H[DHbz�b��GG�l����/H]�R�"$�� �K_G��� ���"$P���тB�
� 8O@��O�@S�r��`�>�O�! W�+(t����`G`
�ƂNp�jf���X:Z����` �N� ���X���ς�8�-����$���������wz��- H����~�8��;C;R�W  �X���5a����׏���(J� g[w�_?�	��h	��2�gHq�r���x��S[}�V��X�0�A@@o8k=:=_(NQ��E���x�b=g��אF�f�g�/��	���͂�@,o���>�O]�����pF���Y�fZڥ(J�&-���6c�xxF�	�-n>N�U_d���H`�34��-�[�6�⿩Q�[@\�F*�_Q��Q�J�{�1�'�S�V/����}�����zYPͼ���D�[�j��Y�t9�CÍ(N�(ɫDq28��8�6]^���r��n7�  p�:C+A�������&PIR�e���>��^�DQ�7�����#����K���3
  �������t�3��OO^� X�w�z�a����]��}�f���X�$��N���r,5��`�'O�5��(J�25���끋�#�b"j<\� 	w�F��pQ,nre�Z%��Rmq�pj�� ��+��S��Ή����!C�^��v/��O����K�C���m�h5�I�����rL�-��� � 6��>�反C  VB�F�9@t�΢(9��;����\2�EQr,�<��>�w�~������}j �;���`/��c"����������q��ӄ��>��@�ٽ8�u�����2`�����/WA�mY�el���@�� f�g���3  ��!�����^����Q �-�Y� ���*Mj��4�-o�  ���rc$��{��C�s  HB��|$�N��M-�)�C��.����X*d���d;!�-��n ޼�Ǎ�U�4^�� �&4rJ%A�@2�-��l	��P���Ou��M�:����ƔR(�� ���F�o  ��:�� ��\$⤥]��-�|�[�e2y�}jY��=Z����U_�F]���f��jh�;�}l���.��or�Ԓ����\����Z�(N�{g+��ɓ�Љ�×�W�
���]�ʿ�D���ל���	{�y���g�F'kQ����W'k�E ��������.�LN�[��}��޲P��v�J��-���CGs�
^�Ja%��c���X"j��ܢ ����Ԭ�������6�'����.`VW�k�gl��e��/���!���M ;K�\E�C�]�/ K)�C�^��|&D�!؆��K6+�=ޡ&�	���B�
�>�����"��=e����߄���!� ��r$@IR;�z8}�P��<\�  ��������f�����ǦfK���B�^�b��� ���25��;?-rA34��^5֟  [�V��{�M�2 &S�=����| x/D��	�G�-��l	X�V|>�z�0��mF�%�`l�K!��d�� �g��g���~T�?<�� ���ϗC�V��FE��w�,��"oZB ��.���.'���X�g H	�=K{�J�]�w`)��B$�P�K���7�s�o<C�y ��C�W*�\��G��ow,
��yc @IR;�I ���%�����X�$��V xwl��$X|��-A�"K�ՙ�
��)��. ,|���w�߅��X`ii��Xi���G�?�w6 \�97� 8#���<(�����.�V#֪��C����  �ݫ��ѽ���!��|�6a<\�DQ��.�=&'C��� �uh+Ij�|{]�m �/�9- ���'z,'�_?�=�<D��5 �w�EI8O�o� X�WB��!څ1��#'�˛������(�WC� ,nr�q�Ǎ�M /����`@PpН��gl�LvP'p��"DQ��! �����d��}j��H��9{���1�:]��D�%���EXYD'����?��%� ��<j��DQ�o�:7���+A*��C�c��B��E +w��������x��-�R@o��7���7-�m�m�;�/�w����ѽX��beq�i�������?���?!=�T�n?Mdk�;';"�WX���������~8oq�a���CXcQ���5�X'a]�:��8�uh��������AQ܈�D}����ֹ�t}42�Hvz�Nδq�VS����0��M�Jp[�89�z�:IvF�����:W�/���ב���50ع�������Ny�+��U�����l��ˑ��E*-5ԞJ�Z�)Mj��TZ��]<X�i)'{y��ɼx�{�����l\�w�޽:}�P]yKD�<V����/����;���Vn=N<X����Y�wX�ʴT@2E��ϼz��`92s?'3���u�rX�o�\]�w02٘��{�y��km������!ۧ���._4�wۧ�D��'�|�d=�ם��������ǩǫ�����6
�Vw�@�����}�E �_/�~5֟��2~l���~<^�|����o��<O���3�*JM�J��ͅ�G�í���ܢ��o�+���b��i	����!/���"�rj}߱�{���81�����u��Ri���R�4�~��zjp�0�*�M�ʫ�_@R7��}e��,J�Z���A�x���ԬT�?m驡�V�l��(U�� '�@N9�������E!����m���3��J��ޅ���=Yd�;gt���lV������/���Z��銑JKAG[FW�"���?��!I�%c,[ru�&�%�O��l)��p���^��0e�����x�
�ѽ0�;A�fK�O0G\�	r�`\�y��g]��/x�6�b�ȸt}��㔀��	��'/CA:�\��N��C�Y�	_^�ܷIv��?A����OPO��;���K�ܢ�ѽH��d�RU�(�奯���Iy�ˣ(nTU>��J*-ut/���]
�q�PG?A\ �T�r�}�s�V��7�=O^��>f���&+�����QG�Jfis�d��ͅ����ќޙ�x���MVf���>�����Y�f������  �B�~��e�B�$DM����N���O�̿|} `���WĽe!D"j�;�䤭s��s���c["NB�_�	xQCA3�����2mz����(��0��\��QO�,h9?4�)瀵 ��lɞg�; ���ٽ��?�MWf���.
O�o?{Vw��S�����$L'��9��S��˼��y���(��ύMW;���݋�����W�=�K;�$�}l)���럎Ǎ곷�F%��:�Wr�of��&�p5��WB�K6*�V#+��5���F���ͳ�2DY�f���p 0=_��$�~��A����� Y������./@��s@�6;�K�Za)MjK�  vB�]�	�B �`9���B���c  HB���Hf��
�����S*
�a���
��d�yP���LQ�(�8�v� �N))�����Py���j�#�|.��P����,|�N�?���9 �"��)=P�l<[)���(i�2E �zni*�����Ϟ�V)���ҿ>  `T�p���	Xy�:�������ܢ@0�GȎ+e���l����d���G7g� 8}!�J_����΋����Y"N�l������r�~ �Bqli쀀���Y�t7��/����44�Z�v;��Cė��`���~�I�j+/����20�y��8�m0�s���`4,nV6������ّ�U�&��˛�l��G�}i�R�h
��u�&S�_�&����E]��H^��{g���o�"�n�_��s���a,�$�����rd<[��?8ۺ�(}������ݥ��x��p9��oq�$,��P�+> ��`~A��u^t���/�{�W'���lT��ފ�F���V}��lTRi���d`�35_:U�]�=~`:�x���k ��J��;�s���ƾc�+����Gϓ�Г��㗡�EanQx�2t�~,~�6�{y��0`<���k  |��a^@^`��| ��u�^ `�h��|�|�)�� 4C4��g����@��S��+`7���!�6��ݰ����)h�4 ��3=A�^
r�ԇ��z@�#a$���Cs�� 7�.'�u�W4A���~�����r��������������>?S����9h�l Lu|.��N�~�r�Es���@�M9!�-"U�F��^�T햸a~��U�Q""����+�n�r��"uH���z�~�����t2�$��F62Qm&A�adG#�b�7T��zG�h����k��ll��z�J�E�ǉ��0����D��8�l�o5���n����#s�čXl;�W�=}�v�,�:�>64D�� �:?b�cc���L���t�	*�m�b�Xԓ���h�E�@J�@Q,4`�-�%t�>�p�n���7�H1�(�|G�'���2?�����:V����T�HS(����qR���1�/H5�r�fo��՛�SxY�ˢ����ʉr�a���<��H[L: �
�'��A�d7T9-�%<��b7���k�sذ�ڠ6?�E>�)�=�w!x�ǩ�C1�
�(*��A� ���|M�kY߂'�� �Į��#���؛����Ӟy�O
�'�''B�@���#:�db[�"���&����>�*����i�@[C�6��[�0m���B�-��C:B���1Z/�S���W��p�W*۸F�	i��7��xdN�
�3� �zZ���`C�n`���ƍxv(�#."=x�Hfﮁ |1�]8i�8G�m5?�7�?�z��^�6�x$LG\�
i���ۏ�ef�����]��K���؍4&�I�lD��`g��mR�L�4�B:�huͷ�ݑN��و�'�tb�O]��l�$AlGZa�~�nG`�$��EZ��'z4�̱�����	z!���IKA�@��DSj�Ė��ˑ`$��}�!�&."ݱ����R/t�x�:������O� N ]8)K�!���;���E�c���,�A���`H�m��x�צ����� ����~�J�]���\΄��'����l�i�sL��f���=�TQ����cc/�E�"����x�B&N@j��<���>��~u�g@*kc��^�_�dh(�C��5|r,�0N�	��m�ؤb��H	%&�KI�c9�ނ�J'u�e��{��&@Q��b�A*ʘ�g�6�kϙˢҧ�M��c%2{���y�� X=��qs�$lVۭ��[.j�SU℉.*��c0����%\�J6�� x�Kb���<���.�|��&�Z�mK]�c?1m��˓��J��+2c��r7{��q�]�MxT��P [�f=3�t�]�yW�:%��ԟH�]�W+��\��%6���:
��m�2m������.�V�(��mļ�Z�6��W8r�����J������T�sz1�r���%�aj�41ū^��l���ѣ�l�Ē��ϗx,��`06�NU��)v�''VNl`._L���B������+;� ;�bg����pB:�s+��M���X�{c�ɢ+�j�}�bj�b������� 5ud��]�����ܛW�՗u%��xS`�����z�Җo�j[���V�+��l|<�ʻ��ύ�5X�:V��=��O�zPQ�G�Ʋ\��^$�8웩��XY�;-�uA����}0*9>�_`��t�������]�'u�cI�&�8h�%���[�>���T.e߃4�)�=���
bm�UN%���䝷��V`�����Ӫ����:�-�I�Rc
bU���W۾����5����Z�J{z��g負��b!��+j�~��b��y�)1���V9��eŞ�؞��]w-%O�S`����m��I,�\�����_��J�hQ=q�Y�(���9P�u�*'�����	bzbz�3+�/�@��_+ӗ�+С�??(-0��
bQ�����[8U$��@��˵��&��!o�LN/���o1�rc�8-�B�/0�"6u~p���ߘ��]��t�z�m+�}&R���I,)���zj*������_�hV����ښs
���󑠤���/���KZ�����e _�[m��w4��k�P�}?��H�q�]"�p]���U G�<q0R����rg����dq�L�V`���P��V�g�dA���=�<<LBJoI�y�dw���8
��`�҅�����X����OBl��bI�\<@�D_@�Ao�L=�o )�*�FO��\�O��|#(x]�e�7�}�H��� ����� !���Qb�>��+���`�vHw >I��#�ˆ�r9��N:�rK�9��>o۝���T���P����g���_ӅW��]�:y'%�T�Zr�]A)6�@*=<��'���0�
o�t�
*�Re�
���Ը��X���nbR	�1�bK�*x��K7F[jk73={�.*�� "�P�xSy�TP�����ߟ%U�G*����R	1	��~F�B����5:�^��������c,R%N3^5�ڋ�������9�SeC�#%NX�bR
���!Z�jrd���nr����z��3ʑm��)�����"e�ci��(�Z0�.sLA�C�fg�j�#�A���K�ᴬBI�X��wh�8� �h��v�:7I;�=Ob�v蟟>C4k��t&N�F�."?�BK�[��)"����
-�y�,�ȏ�`�,��Q�-�1*8���C+��e�:�[�/�<�¡^1W�ѓ���I�M�Л.� �谥�:Q�A�����B�R��j�t�~�M,��4j��Y�iKp��C04�:��w����6�Ir'�A/�����.T��ݧ"�0�=����NY��F�!V/��u�T�����M�-�9"����&LoD(hB�tD?��Z��Tu�qs�]J2���׺ZLc�w|�S�����o�<
�c$���nҭ%�mlk�.�����#.�)�o��܆�w8�Rg��c������� �������vb�O������|�#ۂH�-���_��qX.���Ώ����v)�t_}�l{���:~p�AX�W�$իs,B[�-;λ�g,iǫ/xk�\�vD>̏�9[�*b����ؼ};%��B�N��<?
�¥�kF�_߃<��Q�2v�z�	47���,U�K��!�(�-�(�r�,����Ʒ���1\�r���g'̗U�j�9QJ�rn�A?X�ú�� *��ٱ��\��_�*�#?�G���������y���i��S\��np1rb��MB�_)��VYK�����D����"7)�����MN��^��,�w΀J7cM�A�@$���p����s�s��ֻ�b��vK�l^��x�=?y��U ��і5%�P/v�C�ti���e��&7zR�b�uS�?�G�g���&(K-���S�t�X�����"�]1Υ_���nR���œ����^pQ2�7첽b��3�ba�\��uu2�~w�G�����5��0��{�����\�w��I�c�P����߬��x6μ����!�b���_��!��a2v�ſi���4��C����������rI����f0�7O����S�Ţ���Ϳ��>�����E=o7S�S�-���o��Y�YZ�)�F"-��b�O�k���x��!��P�]\|󋧦���H߽�1��l��lΚ��iu��`ps��C��f�X�5/Q�\_*m�f�)稹����a>$O;��C�a�;V.���cq��i^��R5�X��t%�s���=xȸ�; 5��3\�.R��/���.�۸7���w�y�����Q4��/F����L�9���6ލ��>#߆�����i\�ߪ�l�k��u��G�x?�����������؋Kyu7Ɨ�����o&�~,e��xy����������u�ݛ�9�I�[soك�h>.���۸}��yg���]���Qq�����i\��)��Tƹ�ŭ���E$Z�W�B{IKrD�\'�"�q%�$�&�_e{=s����D"��_�W�1/_[��e��IE�?�=D��®i�صa�@b�K�&��ۺ�+� ����^��������ǥف6M[�
�	�E�ƞAK-�T��|L,��yA.;�vjIƜf��GL��;V�<�zY�mr�r�E9U���/�̜f��!UĐGVpV_~��ƣL�+��u�Ui�F\^�i��^�]g�Kx��X��\����&�!�y�"�+!�A�u!`�;@��P�+Z�|`n�����IGV�m"��KZ��$�aͷ�d�����v̪�(�p2���^����N�	U�(�����I9�7��#��0;C/���m�J�h6ӕ�=�0Z0-������~܇1?��$�Rnj���5����$1ׁݶ�L�w[Ju�K�0c{��>�{�Μ!��,�)����O&��ă����/�:�II� E��e���3A���s���Ed_�! Qn���){Q�4f��͎ns���d�v��W����R��6gtm q�Z,v��;Qr6)A���E;��5�b��Ē�M�'���3�M3���PU�ʵ�]7'��دӜ� 6�cN�Vw�*<���$r[�cJ�����$�2>�*�Rb�)�*I|�����"q��@O����o��V�F�AQԧ�w�(r~�t\a6(�;��EC��MH3��EqcܨF$��͞k&bi/�t��-ƈ�����2Hf�8�Tr�e l ?)�ɉ]���%S�>@�]X�[��L��������S>A�|kF.�U<�u�Q-z�bw�������� 3����$Q�ܡ�I���׍���{��E�i�cy��h�����a�1(Ltn1:M-s�Hm��4����7�^�?r���ңIQz�/��dç(j=�o��xAљ��Y�}�V���AeD����eZ�ij�S�SۘM�w'������2��f��B���'NZg�xT���h}���6F�`�5Ց��y | �����c�,Z+;1XOޣ��T�>��ɀ��3#?��2����a�D�}/!"|�H��XN�t�;y(�7�L&���O2m/x�]�5�!0:Y#<8A������ZT�����)�����T}�cL��4#?������Y������_��ٙp��۝Y��wj*:11��Ё|��a/�?����&S�4biՙI+k={������>}s�:��E61��IuqdZƑwE�̵]<��	k��Z�=��da2<"����}�=v��s�U�)�c���e&�	`
����c5�ԑ䅎�9X�E��Um���%3ő}��X��Q��T�%Յ��(�y���Jb�Z�����d��'[:0$�ĉ���۔��aO^��\Xy��J�WoÚ��ё�!8sx��.Z��,U�����	�N"I0�i��("���w�O!"�NޥHc�[	���)����ߵ\��ȎX�I�G_|d�ٵ�mBҸFA�>�����ҷE��ה��"@$��Yu!�}�2�o�V�El�&��r�TI�����Y0A�l:ɐ�ŵ�!Y���H�+Յ	/�Y���Cě�i0l�P�r��i�R1��Q�J:!����Z����v�lݬ��Bace��,�,���3��KpZ�kƱpK�Zt�������&Ɩ��]} \��(&��Ƀd����G׳�R���md��3~�>ZFpؾ ��Y�js�����e{椹[�=�o�2��p�vVw�V��s�Lq���g�+�}�a�ߤ��U�5'_�Y�{uN>��������E�x��K�AJ�I5�4|�WAh�Fyl�If8)��(�n<�B��W�%�6��7���x��e��G�ې拿\\�'��_	.n���_������G�����G��?��������O��?��������O��?��������O��?�����     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.png-066a63414f814ad908a3883308f6f36a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://rpnHTML/index.png"
dest_files=[ "res://.import/index.png-066a63414f814ad908a3883308f6f36a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDSC   !   	   6   (     �����ض�   �����������Ӷ���   ����Ӷ��   ���ⶶ��   ������������   ��������������������   ��������������������   ��������������������   �����϶�   ���������������������Ҷ�   �������¶���    ������������������������������ض   ����������ݶ   �������Ӷ���   ��������   ��������������ض   ��������Ѷ��   ����ζ��   ����   ������Ӷ   �������������������ն���   ���������ڶ�   ������Ӷ   ���Ӷ���   ��������򶶶   �������¶���   ¶��   ��������¶��   ���������Ѷ�   �������ƶ���   ����������Ķ   ��������ݶ��   ����������ڶ          )   ((?<int>\d+)|(?<op>[*+-/])|(?<other>\S+))               int       op        other         type      val       stack_update                         
                            	   &   
   ,      -      .      6      8      9      :      ;      <      =      >      I      M      N      O      W      \      d      e      l      s      t          !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2     3     4     5   &  6   3YYYB�  P�  QYY;�  V�  Y;�  V�  LMY8;�  V�  Y8;�  V�  Y8;�  V�  YYY0�  PQX=V�  -YYYYYYY0�	  P�
  V�  QX=V�  �  �
  YYY0�  PQX=V�  �  LM�  ;�  �  P�  QY�  �  T�  LM�  �  T�  P�  QY�  ;�  V�  �  T�  PQ�  �  T�  P�  Q�  ;�  �  T�  P�  QY�  �  P�  QT�  �  T�  PQ<�  �  �  P�  QT�  �  �  �  P�  QT�  PQY�  )�  �  T�  P�  QV�  ;�  V�  �  T�  P�  Q�  ;�  V�  �  T�  P�  Q�  ;�  V�  �  T�  P�  QY�  &�  V�  �  T�  PN�  V�  R�  V�  OQ�  '�  V�  �  T�  PN�  V�  R�  V�  OQ�  (V�  �  T�  PN�  V�  R�  V�  OQYY�  �   P�  R�  QY` GDSC                   �������¶���   �����϶�   ���������Ŷ�                                           3YYYY0�  PQX=V�  �  PQY`        GDSC         3        ������������Ķ��   ��������   ������������   ���������酆����   ���¶���   ��������ݶ��   �����϶�   ��������������ض   ���Ӷ���   ���Ӷ���   ض��   �����������ض���   �����������Ҷ���   ���������Ӷ�   ���������������������ض�   ��������������������������ڶ   ��Ҷ   ߶��   ����Ҷ��   �����������������Ӷ�$   �������������������������������Ӷ���   ��ն   ���۶���   ����ڶ��   ����ڶ��   ����   ��������Ҷ��   ��������Ķ��   �������¶���   ����������������Ӷ��   ��������ݶ��      what you doing            
   font_color              HERE      val       font                                                    	      
          (      *      +      ,      -      9      C      J      P      Q      Y      ^      c      d      e      p      w      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2     3   3YYY;�  V�  LMY;�  V�  LMY8;�  V�  YYB�  YYY0�  PQX=V�  -YYYY70�  P�  V�	  QX=V�  )�
  �  T�  PQV�  �  T�  P�
  Q�  �
  T�  PQYY0�  PQX=V�  �?  PQ�  �  LMYYY0�  P�  V�  QX=V�  ;�  V�  �  �  )�  T�  PQV�  &�  �  V�  �  T�  P�  R�  P�  R�  R�  R�  QQ�  (V�  �  T�  P�  R�  P�  R�  R�  R�  QQ�  �  �  YYYY0�  P�  V�  QX=V�  �?  P�  Q�  �  LM�  �  PQ�  �  �  Y�  )�  �  V�  ;�  V�  �  T�  PQ�  �  P�  Q�  �  T�  PQ�  �  T�  P�>  P�  L�  MQQ�  �  T�  P�  R�  Q�  �  T�  P�  Q�  �?  P�X  P�  QQY`     GDSC   $      <   x     ������������Ķ��   ��������   ������������������������   ��������������������   ��������������������   ���������酆����   ���¶���   �����϶�   ��������������ض   ���Ӷ���   ���Ӷ���   ض��   �����������ض���   �����������Ҷ���   ���������Ӷ�   ��������������������������ݶ   ��Ҷ   ��������ն��   �������Ӷ���   ������������   ����ض��   ��������ݶ��   ���Ӷ���   ������Ӷ   �������¶���   �����Ҷ�   �������ݶ���   ����¶��   ��������ڶ��   ���۶���   ����ڶ��   ����ڶ��   ����   ��������Ҷ��   ��������Ķ��   ����������������Ӷ��      type      int       val       op                     Not Enough Numbers        +         -         /         *         Invalid Operand       font                                                       $   	   %   
   -      /      0      1      2      <      F      M      S      T      U      `      l      v      w      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +     ,     -   '  .   (  /   )  0   .  1   /  2   5  3   @  4   E  5   L  6   U  7   ^  8   _  9   k  :   t  ;   v  <   3YYY;�  V�  LMY8;�  V�  Y8;�  V�  Y8;�  V�  Y8;�  V�  YY0�  PQX=V�  -YYYY70�  P�	  V�
  QV�  )�  �	  T�  PQV�  �	  T�  P�  Q�  �  T�  PQYYY0�  P�  V�  QX=V�  ;�  V�  �  P�  QT�  �  ;�  V�  �  L�  MY�  &�  LM�  V�  �  T�  P�  L�  MQ�  '�  LM�  V�  &�  T�  PQ	�  V�  �  P�  QT�  �  �  �  P�  QT�  P�  Q�  (V�  ;�  V�  �  T�  PQ<�  �  ;�  V�  �  T�  PQ<�  �  ;�  �  L�  M�  &�  �  V�  �  T�  P�  �  Q�  '�  �  V�  �  T�  P�  �  Q�  '�  �	  V�  �  T�  P�  �  Q�  '�  �
  V�  �  T�  P�  �  Q�  (V�  �  P�  QT�  �  �  �  P�  QT�  P�  QYY�  �  PQY�  )�  �  V�  ;�  V�  �  T�   PQ�  �!  P�  Q�  �  T�"  PQ�  �  T�  P�  <�  Q�  �  T�#  P�  R�  QY�  &�  �  T�  PQ�  V�  �  P�  QT�  �  �  .Y`      GDSC            C      �����ض�   ��������򶶶   �����������ڶ���   ��Ҷ   �����������ݶ���   �����϶�   �������������������������ض�   ����������ڶ            update_label      update_stack                                                    	      
   #      %      &      '      /      3      :      A      3YYY;�  V�  YYB�  P�  QYB�  P�  QYYY0�  PQX=V�  -YYY0�  PQX=V�  �  �  �  P�  R�  Q�  �  P�  R�  QY`    [remap]

path="res://scripts/CalculateButton.gdc"
              [remap]

path="res://scripts/Input.gdc"
        [remap]

path="res://scripts/PointerStack.gdc"
 [remap]

path="res://scripts/StackStack.gdc"
   [remap]

path="res://scripts/StepButton.gdc"
   �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Rpn    application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     global/size             global/width             global/window          )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres                