   M S B A M L   `   `   `  ����H  DCollegeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CollegeSystemCollegeSystem  5   	       CollegeSystem.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:CollegeSystem     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Login��5	   	   $	��450��6   $	��700��6$    � 
ResizeMode$ NoResize=�60    � 	Resources 5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   �� 5      $u opack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Purple.xaml?�6%   %    5      .��5      � ���#F0F1F3.+�5   
   � $
��Left=�6   $	��350��6*   $��
200,30,0,0q�67   $	��Top=�6K   $	��300��6c   ���#FFFFFF J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 0Q�6#      Opacity$ 0Q�62   .+�5      �� -   5        $��lblLogin��5      $��Login��6$   ���#042954$
��Left=�6I   $��	50,23,0,0q�6d   $	��Top=�6w   $��93��6�   $��42��6�   $��Segoe UI Black)�6�   $��24(�6�   $
��Bold"�6�   '  !MaterialDesignThemes.Wpf.PackIcon  5      �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$
 User=�6&   ���#042954$
��Left=�6G   $��23��6b   $��	45,93,0,0q�6n   �� 5      -   5        $��txtUserName��5      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 	User Name��6)   ���#042954$
��Left=�6j   $��23��6�   $��	65,93,0,0q�6�   
 �� TextWrapping$

 Wrap=�6�   $	��Top=�6�   $	��175��6�   $��0,0,0,1q�6�   ��6�   Z� 6�     5      $ TextboxPassword=�6&   ���#042954$
��Left=�6R   $��23��6m   $��
45,150,0,0q�6y   G� 5      -   5        $��txtPassword��5      $	 Password��6-   ���#042954$
��Left=�6m   $��
65,150,0,0q�6�   $	��Top=�6�   $��23��6�   $	��175��6�   �� 5      -   5        $��	btnSignin��5      $
��Left=�6'   $��106,226,0,0q�6B   $	��Top=�6W   $��96��6o   ���#042954$��36��6�   .��5      ��  �� Orientation$ 
Horizontal=�6   .+�5         $ Login=�6.   �� 5!      $�� Sign in��6    5"      5$      �� 5%      -   5        $��	btnForgot��5%      $
��Left=�6&   $��
74,280,0,0q�6A   $	��Top=�6U   $	��166��6m   ���#FFFFFF$��29��6�   ���#393939$��0q�6�    J� Opacity$ 1Q�6�   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�6�   ��6�   Z� .��5&      �� $ 
Horizontal=�6   .+�5'        $ ForgotPassword=�6.   �� 5(      $�� Forgot Password?��6    $	��125��69   5)      5+      �� 5,      -   5        $��	lblForgot��5,      $
��Left=�6&   $��144,178,0,0q�6A   $	��Top=�6V   $��31��6n   $	��120��6z   5.      50      51      