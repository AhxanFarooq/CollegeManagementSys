   M S B A M L   `   `   `  ����H  DCollegeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CollegeSystemCollegeSystem  5      "    CollegeSystem.AccountSetting   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:CollegeSystem     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   �� 5      $u opack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Purple.xaml?�6%   %    5      .��5      � $
��Left=�6   $	��610��6&   $��0,0,0,0q�63   $	��Top=�6D   $
��1050��6\   ���#F0F1F3.+�5   
   � $
��Left=�6   $	��550��6*   $��	20,50,0,0q�67   $	��Top=�6J   $	��350��6b   ���#FFFFFF.+�5      �� $��Account Seeting��6   $��17(�6.   ���#042954���#FFFFFF$
��left=�6f   $��	10,10,0,0q�6�   $	��Top=�6�   $	��140��6�   $��40��6�   �� 5      -   5        $��txtAccFName��5      $
��Left=�6)   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$   First Name��6D   $��14(�6r   ���#F0F1F3$��37��6�   $��	50,70,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6�   .��6  5      �� 5      -   5        $��txtAccLName��5      $
��Left=�6)   $   Last Name��6D   $��14(�6q   ���#042954���#F0F1F3$��37��6�   $��
50,160,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6  .��6  5      �� 5      -   5        $��
txtAccUser��5      $
��Left=�6(   $ 
  UserName��6C   $��14(�6o   ���#042954���#F0F1F3$��37��6�   $��
50,250,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6  .��6  5       �� 5!      -   5        $��txtAccEmail��5!      $
��Left=�6)   $   Email��6D   $��14(�6m   ���#042954���#F0F1F3$��37��6�   $��
50,340,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6   .��6  5#      G� 5$      -   5        $��txtAccPassword��5$      $
��Left=�60   $ 
  Password��6K   $��14(�6w   ���#042954���#F0F1F3$��37��6�   $��
50,430,0,0q�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6�   5&      �� 5'      -   5        $��lblaccsetting��5'      $
��Left=�6*   $��140,470,0,0q�6E   $	��Top=�6Z   $��31��6r   $	��120��6~   �� 5(      -   5        $��
btnAccSave��5(      $
��Save��6'   $	��0.5q�66   $
��Left=�6L   $��110,510,0,0q�6g   $	��Top=�6~   $	��100��6�   ���#F8C504$��30��6�   ���#FFFFFF5*      5+      � 5,   
   $
��Left=�6   $	��309��6*   $��
400,50,0,0q�67   $	��Top=�6K   $	��600��6c   ���#FFFFFF.+�5-      �� $��User Profile��6   $��20(�6+   ���#042954���#FFFFFF$
��left=�6c   $��	10,10,0,0q�6~   $	��Top=�6�   $	��130��6�   $��40��6�   �� 5/      $��First Name: ��6   $��	50,80,0,0q�6+   6A   �� 50      -   5        $��lblFName��50      $�� ��6   $
��Bold"�6/   $��
170,80,0,0q�6A   6X   �� 51      $��Last Name: ��6   $��
50,120,0,0q�6*   6A   �� 52      -	   5        $��lblLName��52      $�� ��6   $
��Bold"�6/   $��170,120,0,0q�6A   6Y   �� 53      $��User Name: ��6   $��
50,160,0,0q�6*   6A   �� 54      -
   5        $��lblUser��54      $�� ��6   $
��Bold"�6.   $��170,160,0,0q�6@   6X   �� 55      $��Email: ��6   $��
50,200,0,0q�6&   6=   �� 56      -   5        $��lblReligion��56      $�� ��6   $
��Bold"�62   $��170,200,0,0q�6D   6\   58      59      5;      