   M S B A M L   `   `   `  ����H  DCollegeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CollegeSystemCollegeSystem  5          CollegeSystem.Message   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:CollegeSystem     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   �� 5      $u opack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Purple.xaml?�6%   %    5      .��5      � $
��Left=�6   $	��610��6&   $��0,0,0,0q�63   $	��Top=�6D   $
��1050��6\   ���#F0F1F3.+�5   
   � $
��Left=�6   $	��510��6*   $��	30,30,0,0q�67   $	��Top=�6J   $	��650��6b   ���#FFFFFF.+�5      �� -   5        $��txtTitle��5      $
��Left=�6&   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
     Title��6A   $��16(�6n   ���#042954���#F0F1F3$��35��6�   $��	87,70,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��449��6�   $��0,0,0,0q�6   .��6    5       �� 
TargetType �� Property �� Value��%_   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$ 20��69   5      5      .��6%   5       �� 5!      -   5        $��txtRecipient��5!      $
��Left=�6*   $      Recipient��6E   $��16(�6u   ���#042954���#F0F1F3$��35��6�   $��
87,170,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��449��6�   $��0,0,0,0q�6  .��6"    5"      ��%_   '��       �� 5#      " ��6   .�5$      ��  �@��CornerRadius$ 20��69   5%      5&      .��6%   5'      �� 5(      $��
87,240,0,0q�6   $	��100��6(   $��35��64   $
��Left=�6@   $	��Top=�6[   $��18(�6s   $��Message��6�   ���#0429546�   �� 5)      -   5        $��
txtMessage��5)      $
��Left=�6,   $ 	Recipient��6G   $��12(�6r   ���#042954���#F0F1F3$	��175��6�   $��
87,290,0,0q�6�   $	��Top=�6�   $	��449��6�   $��0q�6�     5*      ��%_   '��       �� 5+      " ��6   .�5,      ��  �@��CornerRadius$ 20��69   5-      5.      5/      �� 51      -   5        $��btnSendMessage��51      $��Send Message��6+   $	��0.5q�6B   $
��Left=�6X   $��
87,475,0,0q�6s   $	��Top=�6�   $	��130��6�   ���#F8C504$��30��6�   ���#FFFFFF53      55      � 56   
   $
��Left=�6   $	��200��6*   $��
700,30,0,0q�67   $	��Top=�6K   $	��330��6c   ���#FFFFFF.+�57      �� $��Successful Message��6   $��20(�61   ���#042954���#FFFFFF$��Center=�6i   $��0,0,0,0q�6�   $	��Top=�6�   $	��330��6�   $��40��6�   �� 58       �� Orientation$ 
Horizontal=�6   $
��Left=�62   $	��150��6M   $	��top=�6Z   $	��330��6r   $��0,50,0,0q�6~   .+�59      � ���#FDD214$��70��6,   $��70��68   $��40,0,0,0q�6C   $
��left=�6U   .+�5:      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]	   Kind$	 Check=�6.   ���#FFFFFF$��23q�6P   $��25��6\   $��25��6h   5;      � 5<      ���#FFFFFF$��70��6,   $	��216��68   $��Right=�6D   $
��0,40q�6`   .+�5=      �� -   5        $��lblSuccessMessage��5=      $��16(�65   $��35��6C   $	��206��6O   $��Center=�6[   $��	10,10,0,0q�6x   $	��Top=�6�   5?      5@      5B      � 5C   
   $
��Left=�6   $	��200��6*   $��700,270,0,0q�67   $	��Top=�6L   $	��330��6d   ���#FFFFFF.+�5D      �� $��Error Message��6   $��20(�6,   ���#042954���#FFFFFF$��Center=�6d   $��0,0,0,0q�6�   $	��Top=�6�   $	��330��6�   $��40��6�   �� 5E      $ 
Horizontal=�6   $
��Left=�62   $	��150��6M   $	��top=�6Z   $	��330��6r   $��0,50,0,0q�6~   .+�5F      � ���#FDD214$��70��6,   $��70��68   $��40,0,0,0q�6C   $
��left=�6U   .+�5G        $	 Information=�6.   ���#FFFFFF$��23q�6V   $��25��6b   $��25��6n   5H      � 5I      ���#FFFFFF$��70��6,   $	��216��68   $��Right=�6D   $
��0,40q�6`   .+�5J      �� -   5        $��lblErrorMessage��5J      $��16(�63   $��35��6A   $	��206��6M   $��Center=�6Y   $��	10,10,0,0q�6v   $	��Top=�6�   5L      5M      5N      5O      5P      