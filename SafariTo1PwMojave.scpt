FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ?9
 @title: SafariTo1Password - Mojave Edition, v0.1a
 @author: @bpengu1n
 @description: Export Safari Keychain passwords to a CSV file, to be imported by 1Password.
  Based on the original script by @MrC, AgileBits Forum (author of Converter Suite for 1Password), and a revised version by @pken, AgileBits Forum.
 
 Requires the tool MouseTools, by HAMSoft Engineering, be placed in your home directory, to be executable by this script at the path ~/MouseTools
 	url: http://www.hamsoftengineering.com/codeSharing/MouseTools/MouseTools.html
	
 
 Just before running, ensure a new TextEdit document is open, and open the Safari preferences to your passwords section, entering your password in the box.
 
 DISCLAIMER: This script is provided AS IS! Note that ANY unencrypted copy/paste of account details, even if purely local, could compromise that account information. As such, I HIGHLY recommend disabling all network interfaces before running this script, and ONLY re-enabling them once the data has been imported into 1Password, and the CSV document has been securely deleted!!     � 	 	r 
   @ t i t l e :   S a f a r i T o 1 P a s s w o r d   -   M o j a v e   E d i t i o n ,   v 0 . 1 a 
   @ a u t h o r :   @ b p e n g u 1 n 
   @ d e s c r i p t i o n :   E x p o r t   S a f a r i   K e y c h a i n   p a s s w o r d s   t o   a   C S V   f i l e ,   t o   b e   i m p o r t e d   b y   1 P a s s w o r d . 
      B a s e d   o n   t h e   o r i g i n a l   s c r i p t   b y   @ M r C ,   A g i l e B i t s   F o r u m   ( a u t h o r   o f   C o n v e r t e r   S u i t e   f o r   1 P a s s w o r d ) ,   a n d   a   r e v i s e d   v e r s i o n   b y   @ p k e n ,   A g i l e B i t s   F o r u m . 
   
   R e q u i r e s   t h e   t o o l   M o u s e T o o l s ,   b y   H A M S o f t   E n g i n e e r i n g ,   b e   p l a c e d   i n   y o u r   h o m e   d i r e c t o r y ,   t o   b e   e x e c u t a b l e   b y   t h i s   s c r i p t   a t   t h e   p a t h   ~ / M o u s e T o o l s 
   	 u r l :   h t t p : / / w w w . h a m s o f t e n g i n e e r i n g . c o m / c o d e S h a r i n g / M o u s e T o o l s / M o u s e T o o l s . h t m l 
 	 
   
   J u s t   b e f o r e   r u n n i n g ,   e n s u r e   a   n e w   T e x t E d i t   d o c u m e n t   i s   o p e n ,   a n d   o p e n   t h e   S a f a r i   p r e f e r e n c e s   t o   y o u r   p a s s w o r d s   s e c t i o n ,   e n t e r i n g   y o u r   p a s s w o r d   i n   t h e   b o x . 
   
   D I S C L A I M E R :   T h i s   s c r i p t   i s   p r o v i d e d   A S   I S !   N o t e   t h a t   A N Y   u n e n c r y p t e d   c o p y / p a s t e   o f   a c c o u n t   d e t a i l s ,   e v e n   i f   p u r e l y   l o c a l ,   c o u l d   c o m p r o m i s e   t h a t   a c c o u n t   i n f o r m a t i o n .   A s   s u c h ,   I   H I G H L Y   r e c o m m e n d   d i s a b l i n g   a l l   n e t w o r k   i n t e r f a c e s   b e f o r e   r u n n i n g   t h i s   s c r i p t ,   a n d   O N L Y   r e - e n a b l i n g   t h e m   o n c e   t h e   d a t a   h a s   b e e n   i m p o r t e d   i n t o   1 P a s s w o r d ,   a n d   t h e   C S V   d o c u m e n t   h a s   b e e n   s e c u r e l y   d e l e t e d ! !    
  
 l   } ����  O    }    k   |       I   	������
�� .miscactvnull��� ��� null��  ��        I  
 �� ��
�� .sysodelanull��� ��� nmbr  m   
    ?ٙ�������     ��  O  |    O   {    k   z       r         m    ��
�� boovtrue  1    ��
�� 
pisf    ��   O   !z ! " ! k   4y # #  $ % $ r   4 = & ' & l  4 ; (���� ( I  4 ;�� )��
�� .corecnte****       **** ) 2  4 7��
�� 
crow��  ��  ��   ' o      ���� 0 nrows nRows %  * + * r   > A , - , m   > ?����  - o      ���� 0 i   +  .�� . V   By / 0 / k   Jt 1 1  2 3 2 I  J R�� 4��
�� .miscslctnull���     uiel 4 4   J N�� 5
�� 
crow 5 o   L M���� 0 i  ��   3  6 7 6 O   S n 8 9 8 k   Z m : :  ; < ; r   Z c = > = 1   Z _��
�� 
posn > o      ���� 0 p   <  ?�� ? r   d m @ A @ 1   d i��
�� 
ptsz A o      ���� 0 s  ��   9 4   S W�� B
�� 
crow B o   U V���� 0 i   7  C D C r   o � E F E [   o � G H G l  o w I���� I n   o w J K J 4   r w�� L
�� 
cobj L m   u v����  K o   o r���� 0 p  ��  ��   H ^   w � M N M l  w  O���� O n   w  P Q P 4   z �� R
�� 
cobj R m   } ~����  Q o   w z���� 0 s  ��  ��   N m    �����  F o      ���� 0 x   D  S T S r   � � U V U [   � � W X W l  � � Y���� Y n   � � Z [ Z 4   � ��� \
�� 
cobj \ m   � �����  [ o   � ����� 0 p  ��  ��   X ^   � � ] ^ ] l  � � _���� _ n   � � ` a ` 4   � ��� b
�� 
cobj b m   � �����  a o   � ����� 0 s  ��  ��   ^ m   � �����  V o      ���� 0 y   T  c d c r   � � e f e b   � � g h g l  � � i���� i I  � ��� j k
�� .earsffdralis        afdr j 1   � ���
�� 
cusr k �� l��
�� 
rtyp l m   � ���
�� 
ctxt��  ��  ��   h m   � � m m � n n  M o u s e T o o l s f o      ����  0 mousetoolspath mouseToolsPath d  o p o l  � ���������  ��  ��   p  q r q l  � ���������  ��  ��   r  s t s I  � ��� u��
�� .sysoexecTEXT���     TEXT u b   � � v w v b   � � x y x b   � � z { z b   � � | } | b   � � ~  ~ n   � � � � � 1   � ���
�� 
strq � m   � � � � � � �  ~ / M o u s e T o o l s  m   � � � � � � �    - x   } l  � � ����� � c   � � � � � o   � ����� 0 x   � m   � ���
�� 
ctxt��  ��   { m   � � � � � � �    - y   y l  � � ����� � c   � � � � � o   � ����� 0 y   � m   � ���
�� 
ctxt��  ��   w m   � � � � � � �    - r i g h t C l i c k��   t  � � � O  � � � � � I  � ��� ���
�� .prcskcodnull���     **** � m   � ����� }��   � m   � � � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � O  � � � � � I  � ��� ���
�� .prcskprsnull���     ctxt � o   � ���
�� 
ret ��   � m   � � � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � I  � �� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?ə�������   �  � � � O  B � � � k  A � �  � � � I ������
�� .miscactvnull��� ��� null��  ��   �  � � � I �� ���
�� .sysodelanull��� ��� nmbr � m   � � ?ə�������   �  � � � O ! � � � I  �� ���
�� .prcskprsnull���     ctxt � m   � � � � �  "��   � m   � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � O "4 � � � I &3�� � �
�� .prcskprsnull���     ctxt � m  &) � � � � �  v � �� ���
�� 
faal � m  ,/��
�� eMdsKcmd��   � m  "# � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��� � O 5A � � � I 9@�� ���
�� .prcskprsnull���     ctxt � m  9< � � � � �  " ,��   � m  56 � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � m   � ��                                                                                  ttxt  alis    *  Macintosh HD                   BD ����TextEdit.app                                                   ����            ����  
 cu             Applications  /:Applications:TextEdit.app/    T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��   �  � � � O  C� � � � k  G� � �  � � � I GL������
�� .miscactvnull��� ��� null��  ��   �  � � � I MT�� ���
�� .sysodelanull��� ��� nmbr � m  MP � � ?ə�������   �  � � � O Ua � � � I Y`�� ���
�� .prcskprsnull���     ctxt � o  Y\��
�� 
ret ��   � m  UV � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � O bn � � � I fm�� ���
�� .prcskprsnull���     ctxt � 1  fi��
�� 
tab ��   � m  bc � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � I ov�� ���
�� .sysodelanull��� ��� nmbr � m  or � � ?�      ��   �  � � � O w� � � � I {��� � �
�� .prcskprsnull���     ctxt � m  {~ � � � � �  c � �� ���
�� 
faal � m  ����
�� eMdsKcmd��   � m  wx � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��� � I ���� ���
�� .sysodelanull��� ��� nmbr � m  �� � � ?�      ��  ��   � m  CD � ��                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   �  � � � O  �� � � � k  �� � �  � � � I ��������
�� .miscactvnull��� ��� null��  ��   �  � � � I ���� ��
�� .sysodelanull��� ��� nmbr � m  �� � � ?ə������   �  � � � O �� � � � I ���~ ��}
�~ .prcskprsnull���     ctxt � m  �� � � � � �  "�}   � m  ��  �                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  O �� I ���|
�| .prcskprsnull���     ctxt m  �� �  v �{	�z
�{ 
faal	 m  ���y
�y eMdsKcmd�z   m  ��

�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �x O �� I ���w�v
�w .prcskprsnull���     ctxt m  �� �  " ,�v   m  ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �x   � m  ���                                                                                  ttxt  alis    *  Macintosh HD                   BD ����TextEdit.app                                                   ����            ����  
 cu             Applications  /:Applications:TextEdit.app/    T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��   �  O  � k  �  I ���u�t�s
�u .miscactvnull��� ��� null�t  �s    I ���r�q
�r .sysodelanull��� ��� nmbr m  �� ?ə������q    O �� !  I ���p"�o
�p .prcskprsnull���     ctxt" 1  ���n
�n 
tab �o  ! m  ��##�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   $�m$ O �%&% I ��l'(
�l .prcskprsnull���     ctxt' m  ��)) �**  c( �k+�j
�k 
faal+ m  ��i
�i eMdsKcmd�j  & m  ��,,�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �m   m  ��--�                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   ./. O  I010 k  H22 343 I �h�g�f
�h .miscactvnull��� ��� null�g  �f  4 565 I �e7�d
�e .sysodelanull��� ��� nmbr7 m  88 ?ə������d  6 9:9 O (;<; I  '�c=�b
�c .prcskprsnull���     ctxt= m   #>> �??  "�b  < m  @@�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  : ABA O );CDC I -:�aEF
�a .prcskprsnull���     ctxtE m  -0GG �HH  vF �`I�_
�` 
faalI m  36�^
�^ eMdsKcmd�_  D m  )*JJ�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  B K�]K O <HLML I @G�\N�[
�\ .prcskprsnull���     ctxtN m  @COO �PP  " ,�[  M m  <=QQ�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �]  1 m  RR�                                                                                  ttxt  alis    *  Macintosh HD                   BD ����TextEdit.app                                                   ����            ����  
 cu             Applications  /:Applications:TextEdit.app/    T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��  / STS O  JnUVU k  NmWW XYX I NS�Z�Y�X
�Z .miscactvnull��� ��� null�Y  �X  Y Z[Z O T`\]\ I X_�W^�V
�W .prcskprsnull���     ctxt^ 1  X[�U
�U 
tab �V  ] m  TU__�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  [ `�T` O amaba I el�Sc�R
�S .prcskprsnull���     ctxtc o  eh�Q
�Q 
ret �R  b m  abdd�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �T  V m  JKee�                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  T f�Pf r  otghg [  oriji o  op�O�O 0 i  j m  pq�N�N h o      �M�M 0 i  �P   0 B   F Iklk o   F G�L�L 0 i  l o   G H�K�K 0 nrows nRows��   " n   ! 1mnm 4   . 1�Jo
�J 
tabBo m   / 0�I�I n n   ! .pqp 4   + .�Hr
�H 
scrar m   , -�G�G q n   ! +sts 4   ( +�Fu
�F 
sgrpu m   ) *�E�E t n   ! (vwv 4   % (�Dx
�D 
sgrpx m   & '�C�C w 4   ! %�By
�B 
cwiny m   # $�A�A ��    4    �@z
�@ 
pcapz m    {{ �||  S a f a r i  m    }}�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��    m     ~~�                                                                                  sfri  alis    "  Macintosh HD                   BD ����
Safari.app                                                     ����            ����  
 cu             Applications  /:Applications:Safari.app/   
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��    �? l     �>�=�<�>  �=  �<  �?       �;���;  � �:
�: .aevtoappnull  �   � ****� �9��8�7���6
�9 .aevtoappnull  �   � ****� k    }��  
�5�5  �8  �7  �  � 9~�4 �3}�2{�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ��� m� �� � � ������ � � � ��� �� � � �)>GO
�4 .miscactvnull��� ��� null
�3 .sysodelanull��� ��� nmbr
�2 
pcap
�1 
pisf
�0 
cwin
�/ 
sgrp
�. 
scra
�- 
tabB
�, 
crow
�+ .corecnte****       ****�* 0 nrows nRows�) 0 i  
�( .miscslctnull���     uiel
�' 
posn�& 0 p  
�% 
ptsz�$ 0 s  
�# 
cobj�" 0 x  �! 0 y  
�  
cusr
� 
rtyp
� 
ctxt
� .earsffdralis        afdr�  0 mousetoolspath mouseToolsPath
� 
strq
� .sysoexecTEXT���     TEXT� }
� .prcskcodnull���     ****
� 
ret 
� .prcskprsnull���     ctxt
� 
faal
� eMdsKcmd
� 
tab �6~�z*j O�j O�i*��/ae*�,FO*�k/�k/�k/�k/�k/G*�-j E�OkE�O6h��*��/j O*��/ *a ,E` O*a ,E` UO_ a k/_ a k/l!E` O_ a l/_ a l/l!E` O*a ,a a l a %E` Oa a ,a  %_ a &%a !%_ a &%a "%j #O� 	a $j %UO� 	_ &j 'UOa (j Oa ) <*j Oa (j O� 	a *j 'UO� a +a ,a -l 'UO� 	a .j 'UUO� L*j Oa (j O� 	_ &j 'UO� 	_ /j 'UOa 0j O� a 1a ,a -l 'UOa 0j UOa ) <*j Oa (j O� 	a 2j 'UO� a 3a ,a -l 'UO� 	a 4j 'UUO� /*j Oa (j O� 	_ /j 'UO� a 5a ,a -l 'UUOa ) <*j Oa (j O� 	a 6j 'UO� a 7a ,a -l 'UO� 	a 8j 'UUO� !*j O� 	_ /j 'UO� 	_ &j 'UUO�kE�[OY��UUUU ascr  ��ޭ