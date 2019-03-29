class Styling

  PROMPT = TTY::Prompt.new
  FONT = TTY::Font.new(:doom)
  @PASTEL = Pastel.new
  WIDTH = TTY::Screen.width
  HEIGHT = TTY::Screen.height
  
# def self.box_this(str)
#   box = TTY::Box.frame(width: 60, height: 10, align: :center, padding: 4) do
#         "#{str}"
#   end
#   puts box
# end

def self.puts_super_super_fast(str)
    str
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.0000001
    end
    print "\n"
  end

   def self.puts_super_fast(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.001
    end
    print "\n"
  end

  def self.puts_slow(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.15
    end
    print "\n"
  end

  def self.puts_medium(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.1
    end
    print "\n"
  end

  def self.puts_fast(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.02
    end
    print "\n"
  end

  def self.centre(str)
      # @PASTEL.on_bright_white(str)
      str
  end

  def self.fake_loading_bar
    puts_fast "████████████████ GETTING INFO █████████████████"
    system 'clear'
    self.smart_graphic
    puts_super_super_fast "████████████████ GATHERED INFO ████████████████"
  end
  def self.landing_page(str)
      # @PASTEL.bright_white.on_bright_black.bold("#{str}")
      @PASTEL.underline.bold(str)
  end

  def self.intro_graphic
    system 'clear'
                    Styling.puts_super_super_fast("                                                                                                                                                                                                                                                                                                                  
                    YYYYYYY       YYYYYYY     OOOOOOOOO     UUUUUUUU     UUUUUUUU     TTTTTTTTTTTTTTTTTTTTTTTHHHHHHHHH     HHHHHHHHHIIIIIIIIIINNNNNNNN        NNNNNNNNKKKKKKKKK    KKKKKKK
                    Y:::::Y       Y:::::Y   OO:::::::::OO   U::::::U     U::::::U     T:::::::::::::::::::::TH:::::::H     H:::::::HI::::::::IN:::::::N       N::::::NK:::::::K    K:::::K
                    Y:::::Y       Y:::::Y OO:::::::::::::OO U::::::U     U::::::U     T:::::::::::::::::::::TH:::::::H     H:::::::HI::::::::IN::::::::N      N::::::NK:::::::K    K:::::K
                    Y::::::Y     Y::::::YO:::::::OOO:::::::OUU:::::U     U:::::UU     T:::::TT:::::::TT:::::THH::::::H     H::::::HHII::::::IIN:::::::::N     N::::::NK:::::::K   K::::::K
                    YYY:::::Y   Y:::::YYYO::::::O   O::::::O U:::::U     U:::::U      TTTTTT  T:::::T  TTTTTT  H:::::H     H:::::H    I::::I  N::::::::::N    N::::::NKK::::::K  K:::::KKK
                       Y:::::Y Y:::::Y   O:::::O     O:::::O U:::::D     D:::::U              T:::::T          H:::::H     H:::::H    I::::I  N:::::::::::N   N::::::N  K:::::K K:::::K   
                        Y:::::Y:::::Y    O:::::O     O:::::O U:::::D     D:::::U              T:::::T          H::::::HHHHH::::::H    I::::I  N:::::::N::::N  N::::::N  K::::::K:::::K    
                         Y:::::::::Y     O:::::O     O:::::O U:::::D     D:::::U              T:::::T          H:::::::::::::::::H    I::::I  N::::::N N::::N N::::::N  K:::::::::::K     
                          Y:::::::Y      O:::::O     O:::::O U:::::D     D:::::U              T:::::T          H:::::::::::::::::H    I::::I  N::::::N  N::::N:::::::N  K:::::::::::K     
                           Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U              T:::::T          H::::::HHHHH::::::H    I::::I  N::::::N   N:::::::::::N  K::::::K:::::K    
                           Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U              T:::::T          H:::::H     H:::::H    I::::I  N::::::N    N::::::::::N  K:::::K K:::::K   
                           Y:::::Y       O::::::O   O::::::O U::::::U   U::::::U              T:::::T          H:::::H     H:::::H    I::::I  N::::::N     N:::::::::NKK::::::K  K:::::KKK
                           Y:::::Y       O:::::::OOO:::::::O U:::::::UUU:::::::U            TT:::::::TT      HH::::::H     H::::::HHII::::::IIN::::::N      N::::::::NK:::::::K   K::::::K
                        YYYY:::::YYYY     OO:::::::::::::OO   UU:::::::::::::UU             T:::::::::T      H:::::::H     H:::::::HI::::::::IN::::::N       N:::::::NK:::::::K    K:::::K
                        Y:::::::::::Y       OO:::::::::OO       UU:::::::::UU               T:::::::::T      H:::::::H     H:::::::HI::::::::IN::::::N        N::::::NK:::::::K    K:::::K
                        YYYYYYYYYYYYY         OOOOOOOOO           UUUUUUUUU                 TTTTTTTTTTT      HHHHHHHHH     HHHHHHHHHIIIIIIIIIINNNNNNNN         NNNNNNNKKKKKKKKK    KKKKKKK
                    ")
sleep 0.75
                                                    Styling.puts_super_super_fast("                                                                                                              
                                                                                                                  ''''''                                          
                                                    YYYYYYY       YYYYYYY     OOOOOOOOO     UUUUUUUU     UUUUUUUU '::::'RRRRRRRRRRRRRRRRR   EEEEEEEEEEEEEEEEEEEEEE
                                                    Y:::::Y       Y:::::Y   OO:::::::::OO   U::::::U     U::::::U '::::'R::::::::::::::::R  E::::::::::::::::::::E
                                                    Y:::::Y       Y:::::Y OO:::::::::::::OO U::::::U     U::::::U ':::''R::::::RRRRRR:::::R E::::::::::::::::::::E
                                                    Y::::::Y     Y::::::YO:::::::OOO:::::::OUU:::::U     U:::::UU':::'  RR:::::R     R:::::REE::::::EEEEEEEEE::::E
                                                    YYY:::::Y   Y:::::YYYO::::::O   O::::::O U:::::U     U:::::U ''''     R::::R     R:::::R  E:::::E       EEEEEE
                                                       Y:::::Y Y:::::Y   O:::::O     O:::::O U:::::D     D:::::U          R::::R     R:::::R  E:::::E             
                                                        Y:::::Y:::::Y    O:::::O     O:::::O U:::::D     D:::::U          R::::RRRRRR:::::R   E::::::EEEEEEEEEE   
                                                         Y:::::::::Y     O:::::O     O:::::O U:::::D     D:::::U          R:::::::::::::RR    E:::::::::::::::E   
                                                          Y:::::::Y      O:::::O     O:::::O U:::::D     D:::::U          R::::RRRRRR:::::R   E:::::::::::::::E   
                                                           Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U          R::::R     R:::::R  E::::::EEEEEEEEEE   
                                                           Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U          R::::R     R:::::R  E:::::E             
                                                           Y:::::Y       O::::::O   O::::::O U::::::U   U::::::U          R::::R     R:::::R  E:::::E       EEEEEE
                                                           Y:::::Y       O:::::::OOO:::::::O U:::::::UUU:::::::U        RR:::::R     R:::::REE::::::EEEEEEEE:::::E
                                                        YYYY:::::YYYY     OO:::::::::::::OO   UU:::::::::::::UU         R::::::R     R:::::RE::::::::::::::::::::E
                                                        Y:::::::::::Y       OO:::::::::OO       UU:::::::::UU           R::::::R     R:::::RE::::::::::::::::::::E
                                                        YYYYYYYYYYYYY         OOOOOOOOO           UUUUUUUUU             RRRRRRRR     RRRRRRREEEEEEEEEEEEEEEEEEEEEE
                                                    ")
sleep 0.75
system 'clear'
                    Styling.puts_super_super_fast "
                                                                                                                                                        ???????           ???????     
                                                                                                                                                      ??:::::::??       ??:::::::??   
                       SSSSSSSSSSSSSSS MMMMMMMM               MMMMMMMM               AAA               RRRRRRRRRRRRRRRRR   TTTTTTTTTTTTTTTTTTTTTTT  ??:::::::::::?    ??:::::::::::?  
                     SS:::::::::::::::SM:::::::M             M:::::::M              A:::A              R::::::::::::::::R  T:::::::::::::::::::::T ?:::::????:::::?  ?:::::????:::::? 
                    S:::::SSSSSS::::::SM::::::::M           M::::::::M             A:::::A             R::::::RRRRRR:::::R T:::::::::::::::::::::T ?::::?    ?::::?  ?::::?    ?::::? 
                    S:::::S     SSSSSSSM:::::::::M         M:::::::::M            A:::::::A            RR:::::R     R:::::RT:::::TT:::::::TT:::::T ?::::?     ?::::? ?::::?     ?::::?
                    S:::::S            M::::::::::M       M::::::::::M           A:::::::::A             R::::R     R:::::RTTTTTT  T:::::T  TTTTTT ??????     ?::::? ??????     ?::::?
                    S:::::S            M:::::::::::M     M:::::::::::M          A:::::A:::::A            R::::R     R:::::R        T:::::T                   ?::::?            ?::::? 
                     S::::SSSS         M:::::::M::::M   M::::M:::::::M         A:::::A A:::::A           R::::RRRRRR:::::R         T:::::T                  ?::::?            ?::::?  
                      SS::::::SSSSS    M::::::M M::::M M::::M M::::::M        A:::::A   A:::::A          R:::::::::::::RR          T:::::T                 ?::::?            ?::::?   
                        SSS::::::::SS  M::::::M  M::::M::::M  M::::::M       A:::::A     A:::::A         R::::RRRRRR:::::R         T:::::T                ?::::?            ?::::?    
                           SSSSSS::::S M::::::M   M:::::::M   M::::::M      A:::::AAAAAAAAA:::::A        R::::R     R:::::R        T:::::T               ?::::?            ?::::?     
                                S:::::SM::::::M    M:::::M    M::::::M     A:::::::::::::::::::::A       R::::R     R:::::R        T:::::T               ?::::?            ?::::?     
                                S:::::SM::::::M     MMMMM     M::::::M    A:::::AAAAAAAAAAAAA:::::A      R::::R     R:::::R        T:::::T               ??::??            ??::??     
                    SSSSSSS     S:::::SM::::::M               M::::::M   A:::::A             A:::::A   RR:::::R     R:::::R      TT:::::::TT              ????              ????      
                    S::::::SSSSSS:::::SM::::::M               M::::::M  A:::::A               A:::::A  R::::::R     R:::::R      T:::::::::T                                          
                    S:::::::::::::::SS M::::::M               M::::::M A:::::A                 A:::::A R::::::R     R:::::R      T:::::::::T              ???               ???       
                     SSSSSSSSSSSSSSS   MMMMMMMM               MMMMMMMMAAAAAAA                   AAAAAAARRRRRRRR     RRRRRRR      TTTTTTTTTTT             ??:??             ??:??      
                                                                                                                                                          ???               ???       
                    "               
sleep 0.75
end

def self.smart_graphic
  system 'clear'
                    Styling.puts_super_super_fast "
                                                                                                                                                        ???????           ???????     
                                                                                                                                                      ??:::::::??       ??:::::::??   
                       SSSSSSSSSSSSSSS MMMMMMMM               MMMMMMMM               AAA               RRRRRRRRRRRRRRRRR   TTTTTTTTTTTTTTTTTTTTTTT  ??:::::::::::?    ??:::::::::::?  
                     SS:::::::::::::::SM:::::::M             M:::::::M              A:::A              R::::::::::::::::R  T:::::::::::::::::::::T ?:::::????:::::?  ?:::::????:::::? 
                    S:::::SSSSSS::::::SM::::::::M           M::::::::M             A:::::A             R::::::RRRRRR:::::R T:::::::::::::::::::::T ?::::?    ?::::?  ?::::?    ?::::? 
                    S:::::S     SSSSSSSM:::::::::M         M:::::::::M            A:::::::A            RR:::::R     R:::::RT:::::TT:::::::TT:::::T ?::::?     ?::::? ?::::?     ?::::?
                    S:::::S            M::::::::::M       M::::::::::M           A:::::::::A             R::::R     R:::::RTTTTTT  T:::::T  TTTTTT ??????     ?::::? ??????     ?::::?
                    S:::::S            M:::::::::::M     M:::::::::::M          A:::::A:::::A            R::::R     R:::::R        T:::::T                   ?::::?            ?::::? 
                     S::::SSSS         M:::::::M::::M   M::::M:::::::M         A:::::A A:::::A           R::::RRRRRR:::::R         T:::::T                  ?::::?            ?::::?  
                      SS::::::SSSSS    M::::::M M::::M M::::M M::::::M        A:::::A   A:::::A          R:::::::::::::RR          T:::::T                 ?::::?            ?::::?   
                        SSS::::::::SS  M::::::M  M::::M::::M  M::::::M       A:::::A     A:::::A         R::::RRRRRR:::::R         T:::::T                ?::::?            ?::::?    
                           SSSSSS::::S M::::::M   M:::::::M   M::::::M      A:::::AAAAAAAAA:::::A        R::::R     R:::::R        T:::::T               ?::::?            ?::::?     
                                S:::::SM::::::M    M:::::M    M::::::M     A:::::::::::::::::::::A       R::::R     R:::::R        T:::::T               ?::::?            ?::::?     
                                S:::::SM::::::M     MMMMM     M::::::M    A:::::AAAAAAAAAAAAA:::::A      R::::R     R:::::R        T:::::T               ??::??            ??::??     
                    SSSSSSS     S:::::SM::::::M               M::::::M   A:::::A             A:::::A   RR:::::R     R:::::R      TT:::::::TT              ????              ????      
                    S::::::SSSSSS:::::SM::::::M               M::::::M  A:::::A               A:::::A  R::::::R     R:::::R      T:::::::::T                                          
                    S:::::::::::::::SS M::::::M               M::::::M A:::::A                 A:::::A R::::::R     R:::::R      T:::::::::T              ???               ???       
                     SSSSSSSSSSSSSSS   MMMMMMMM               MMMMMMMMAAAAAAA                   AAAAAAARRRRRRRR     RRRRRRR      TTTTTTTTTTT             ??:??             ??:??      
                                                                                                                                                          ???               ???       
                    "               

end

def self.main_menu_screen

                                 puts_super_super_fast                                                    "                                                                                 
                                                    LLLLLLLLLLL                  OOOOOOOOO             GGGGGGGGGGGGGIIIIIIIIIINNNNNNNN        NNNNNNNN
                                                    L:::::::::L                OO:::::::::OO        GGG::::::::::::GI::::::::IN:::::::N       N::::::N
                                                    L:::::::::L              OO:::::::::::::OO    GG:::::::::::::::GI::::::::IN::::::::N      N::::::N
                                                    LL:::::::LL             O:::::::OOO:::::::O  G:::::GGGGGGGG::::GII::::::IIN:::::::::N     N::::::N
                                                      L:::::L               O::::::O   O::::::O G:::::G       GGGGGG  I::::I  N::::::::::N    N::::::N
                                                      L:::::L               O:::::O     O:::::OG:::::G                I::::I  N:::::::::::N   N::::::N
                                                      L:::::L               O:::::O     O:::::OG:::::G                I::::I  N:::::::N::::N  N::::::N
                                                      L:::::L               O:::::O     O:::::OG:::::G    GGGGGGGGGG  I::::I  N::::::N N::::N N::::::N
                                                      L:::::L               O:::::O     O:::::OG:::::G    G::::::::G  I::::I  N::::::N  N::::N:::::::N
                                                      L:::::L               O:::::O     O:::::OG:::::G    GGGGG::::G  I::::I  N::::::N   N:::::::::::N
                                                      L:::::L               O:::::O     O:::::OG:::::G        G::::G  I::::I  N::::::N    N::::::::::N
                                                      L:::::L         LLLLLLO::::::O   O::::::O G:::::G       G::::G  I::::I  N::::::N     N:::::::::N
                                                    LL:::::::LLLLLLLLL:::::LO:::::::OOO:::::::O  G:::::GGGGGGGG::::GII::::::IIN::::::N      N::::::::N
                                                    L::::::::::::::::::::::L OO:::::::::::::OO    GG:::::::::::::::GI::::::::IN::::::N       N:::::::N
                                                    L::::::::::::::::::::::L   OO:::::::::OO        GGG::::::GGG:::GI::::::::IN::::::N        N::::::N
                                                    LLLLLLLLLLLLLLLLLLLLLLLL     OOOOOOOOO             GGGGGG   GGGGIIIIIIIIIINNNNNNNN         NNNNNNN
                                                    "
end

def self.category_menu
  puts "

                                                                                                                                                                                                
                                                                                                                                                                                                
                    CCCCCCCCCCCCC               AAA               TTTTTTTTTTTTTTTTTTTTTTTEEEEEEEEEEEEEEEEEEEEEE        GGGGGGGGGGGGG     OOOOOOOOO     RRRRRRRRRRRRRRRRR   YYYYYYY       YYYYYYY
                 CCC::::::::::::C              A:::A              T:::::::::::::::::::::TE::::::::::::::::::::E     GGG::::::::::::G   OO:::::::::OO   R::::::::::::::::R  Y:::::Y       Y:::::Y
               CC:::::::::::::::C             A:::::A             T:::::::::::::::::::::TE::::::::::::::::::::E   GG:::::::::::::::G OO:::::::::::::OO R::::::RRRRRR:::::R Y:::::Y       Y:::::Y
              C:::::CCCCCCCC::::C            A:::::::A            T:::::TT:::::::TT:::::TEE::::::EEEEEEEEE::::E  G:::::GGGGGGGG::::GO:::::::OOO:::::::ORR:::::R     R:::::RY::::::Y     Y::::::Y
             C:::::C       CCCCCC           A:::::::::A           TTTTTT  T:::::T  TTTTTT  E:::::E       EEEEEE G:::::G       GGGGGGO::::::O   O::::::O  R::::R     R:::::RYYY:::::Y   Y:::::YYY
            C:::::C                        A:::::A:::::A                  T:::::T          E:::::E             G:::::G              O:::::O     O:::::O  R::::R     R:::::R   Y:::::Y Y:::::Y   
            C:::::C                       A:::::A A:::::A                 T:::::T          E::::::EEEEEEEEEE   G:::::G              O:::::O     O:::::O  R::::RRRRRR:::::R     Y:::::Y:::::Y    
            C:::::C                      A:::::A   A:::::A                T:::::T          E:::::::::::::::E   G:::::G    GGGGGGGGGGO:::::O     O:::::O  R:::::::::::::RR       Y:::::::::Y     
            C:::::C                     A:::::A     A:::::A               T:::::T          E:::::::::::::::E   G:::::G    G::::::::GO:::::O     O:::::O  R::::RRRRRR:::::R       Y:::::::Y      
            C:::::C                    A:::::AAAAAAAAA:::::A              T:::::T          E::::::EEEEEEEEEE   G:::::G    GGGGG::::GO:::::O     O:::::O  R::::R     R:::::R       Y:::::Y       
            C:::::C                   A:::::::::::::::::::::A             T:::::T          E:::::E             G:::::G        G::::GO:::::O     O:::::O  R::::R     R:::::R       Y:::::Y       
             C:::::C       CCCCCC    A:::::AAAAAAAAAAAAA:::::A            T:::::T          E:::::E       EEEEEE G:::::G       G::::GO::::::O   O::::::O  R::::R     R:::::R       Y:::::Y       
              C:::::CCCCCCCC::::C   A:::::A             A:::::A         TT:::::::TT      EE::::::EEEEEEEE:::::E  G:::::GGGGGGGG::::GO:::::::OOO:::::::ORR:::::R     R:::::R       Y:::::Y       
               CC:::::::::::::::C  A:::::A               A:::::A        T:::::::::T      E::::::::::::::::::::E   GG:::::::::::::::G OO:::::::::::::OO R::::::R     R:::::R    YYYY:::::YYYY    
                 CCC::::::::::::C A:::::A                 A:::::A       T:::::::::T      E::::::::::::::::::::E     GGG::::::GGG:::G   OO:::::::::OO   R::::::R     R:::::R    Y:::::::::::Y    
                    CCCCCCCCCCCCCAAAAAAA                   AAAAAAA      TTTTTTTTTTT      EEEEEEEEEEEEEEEEEEEEEE        GGGGGG   GGGG     OOOOOOOOO     RRRRRRRR     RRRRRRR    YYYYYYYYYYYYY    
  "
end

def self.start_screen_banner
                puts "
                                                                                                                                                                          ???????     
                                                                                                                                                                        ??:::::::??   
              WWWWWWWW                           WWWWWWWWHHHHHHHHH     HHHHHHHHH     OOOOOOOOO                    DDDDDDDDDDDDD        IIIIIIIIII   SSSSSSSSSSSSSSS   ??:::::::::::?  
              W::::::W                           W::::::WH:::::::H     H:::::::H   OO:::::::::OO                  D::::::::::::DDD     I::::::::I SS:::::::::::::::S ?:::::????:::::? 
              W::::::W                           W::::::WH:::::::H     H:::::::H OO:::::::::::::OO                D:::::::::::::::DD   I::::::::IS:::::SSSSSS::::::S ?::::?    ?::::? 
              W::::::W                           W::::::WHH::::::H     H::::::HHO:::::::OOO:::::::O               DDD:::::DDDDD:::::D  II::::::IIS:::::S     SSSSSSS ?::::?     ?::::?
               W:::::W           WWWWW           W:::::W   H:::::H     H:::::H  O::::::O   O::::::O                 D:::::D    D:::::D   I::::I  S:::::S             ??????     ?::::?
                W:::::W         W:::::W         W:::::W    H:::::H     H:::::H  O:::::O     O:::::O                 D:::::D     D:::::D  I::::I  S:::::S                       ?::::? 
                 W:::::W       W:::::::W       W:::::W     H::::::HHHHH::::::H  O:::::O     O:::::O                 D:::::D     D:::::D  I::::I   S::::SSSS                   ?::::?  
                  W:::::W     W:::::::::W     W:::::W      H:::::::::::::::::H  O:::::O     O:::::O                 D:::::D     D:::::D  I::::I    SS::::::SSSSS             ?::::?   
                   W:::::W   W:::::W:::::W   W:::::W       H:::::::::::::::::H  O:::::O     O:::::O                 D:::::D     D:::::D  I::::I      SSS::::::::SS          ?::::?    
                    W:::::W W:::::W W:::::W W:::::W        H::::::HHHHH::::::H  O:::::O     O:::::O                 D:::::D     D:::::D  I::::I         SSSSSS::::S        ?::::?     
                     W:::::W:::::W   W:::::W:::::W         H:::::H     H:::::H  O:::::O     O:::::O                 D:::::D     D:::::D  I::::I              S:::::S       ?::::?     
                      W:::::::::W     W:::::::::W          H:::::H     H:::::H  O::::::O   O::::::O                 D:::::D    D:::::D   I::::I              S:::::S       ??::??     
                       W:::::::W       W:::::::W         HH::::::H     H::::::HHO:::::::OOO:::::::O               DDD:::::DDDDD:::::D  II::::::IISSSSSSS     S:::::S        ????      
                        W:::::W         W:::::W          H:::::::H     H:::::::H OO:::::::::::::OO                D:::::::::::::::DD   I::::::::IS::::::SSSSSS:::::S                  
                         W:::W           W:::W           H:::::::H     H:::::::H   OO:::::::::OO                  D::::::::::::DDD     I::::::::IS:::::::::::::::SS         ???       
                          WWW             WWW            HHHHHHHHH     HHHHHHHHH     OOOOOOOOO                    DDDDDDDDDDDDD        IIIIIIIIII SSSSSSSSSSSSSSS          ??:??      
                                                                                                                                                                            ???       
"
end

def self.wrong
puts "                                                                                                       
                    WWWWWWWW                           WWWWWWWWRRRRRRRRRRRRRRRRR        OOOOOOOOO     NNNNNNNN        NNNNNNNN        GGGGGGGGGGGGG !!! 
                    W::::::W                           W::::::WR::::::::::::::::R     OO:::::::::OO   N:::::::N       N::::::N     GGG::::::::::::G!!:!!
                    W::::::W                           W::::::WR::::::RRRRRR:::::R  OO:::::::::::::OO N::::::::N      N::::::N   GG:::::::::::::::G!:::!
                    W::::::W                           W::::::WRR:::::R     R:::::RO:::::::OOO:::::::ON:::::::::N     N::::::N  G:::::GGGGGGGG::::G!:::!
                     W:::::W           WWWWW           W:::::W   R::::R     R:::::RO::::::O   O::::::ON::::::::::N    N::::::N G:::::G       GGGGGG!:::!
                      W:::::W         W:::::W         W:::::W    R::::R     R:::::RO:::::O     O:::::ON:::::::::::N   N::::::NG:::::G              !:::!
                       W:::::W       W:::::::W       W:::::W     R::::RRRRRR:::::R O:::::O     O:::::ON:::::::N::::N  N::::::NG:::::G              !:::!
                        W:::::W     W:::::::::W     W:::::W      R:::::::::::::RR  O:::::O     O:::::ON::::::N N::::N N::::::NG:::::G    GGGGGGGGGG!:::!
                         W:::::W   W:::::W:::::W   W:::::W       R::::RRRRRR:::::R O:::::O     O:::::ON::::::N  N::::N:::::::NG:::::G    G::::::::G!:::!
                          W:::::W W:::::W W:::::W W:::::W        R::::R     R:::::RO:::::O     O:::::ON::::::N   N:::::::::::NG:::::G    GGGGG::::G!:::!
                           W:::::W:::::W   W:::::W:::::W         R::::R     R:::::RO:::::O     O:::::ON::::::N    N::::::::::NG:::::G        G::::G!!:!!
                            W:::::::::W     W:::::::::W          R::::R     R:::::RO::::::O   O::::::ON::::::N     N:::::::::N G:::::G       G::::G !!! 
                             W:::::::W       W:::::::W         RR:::::R     R:::::RO:::::::OOO:::::::ON::::::N      N::::::::N  G:::::GGGGGGGG::::G     
                              W:::::W         W:::::W          R::::::R     R:::::R OO:::::::::::::OO N::::::N       N:::::::N   GG:::::::::::::::G !!! 
                               W:::W           W:::W           R::::::R     R:::::R   OO:::::::::OO   N::::::N        N::::::N     GGG::::::GGG:::G!!:!!
                                WWW             WWW            RRRRRRRR     RRRRRRR     OOOOOOOOO     NNNNNNNN         NNNNNNN        GGGGGG   GGGG !!! 
                                                                                                                                                        
"

end

def self.correct_banner
  puts "
                                                                                                                           
                            CCCCCCCCCCCCC     OOOOOOOOO     RRRRRRRRRRRRRRRRR   RRRRRRRRRRRRRRRRR   EEEEEEEEEEEEEEEEEEEEEE        CCCCCCCCCCCCCTTTTTTTTTTTTTTTTTTTTTTT !!! 
                         CCC::::::::::::C   OO:::::::::OO   R::::::::::::::::R  R::::::::::::::::R  E::::::::::::::::::::E     CCC::::::::::::CT:::::::::::::::::::::T!!:!!
                       CC:::::::::::::::C OO:::::::::::::OO R::::::RRRRRR:::::R R::::::RRRRRR:::::R E::::::::::::::::::::E   CC:::::::::::::::CT:::::::::::::::::::::T!:::!
                      C:::::CCCCCCCC::::CO:::::::OOO:::::::ORR:::::R     R:::::RRR:::::R     R:::::REE::::::EEEEEEEEE::::E  C:::::CCCCCCCC::::CT:::::TT:::::::TT:::::T!:::!
                     C:::::C       CCCCCCO::::::O   O::::::O  R::::R     R:::::R  R::::R     R:::::R  E:::::E       EEEEEE C:::::C       CCCCCCTTTTTT  T:::::T  TTTTTT!:::!
                    C:::::C              O:::::O     O:::::O  R::::R     R:::::R  R::::R     R:::::R  E:::::E             C:::::C                      T:::::T        !:::!
                    C:::::C              O:::::O     O:::::O  R::::RRRRRR:::::R   R::::RRRRRR:::::R   E::::::EEEEEEEEEE   C:::::C                      T:::::T        !:::!
                    C:::::C              O:::::O     O:::::O  R:::::::::::::RR    R:::::::::::::RR    E:::::::::::::::E   C:::::C                      T:::::T        !:::!
                    C:::::C              O:::::O     O:::::O  R::::RRRRRR:::::R   R::::RRRRRR:::::R   E:::::::::::::::E   C:::::C                      T:::::T        !:::!
                    C:::::C              O:::::O     O:::::O  R::::R     R:::::R  R::::R     R:::::R  E::::::EEEEEEEEEE   C:::::C                      T:::::T        !:::!
                    C:::::C              O:::::O     O:::::O  R::::R     R:::::R  R::::R     R:::::R  E:::::E             C:::::C                      T:::::T        !!:!!
                     C:::::C       CCCCCCO::::::O   O::::::O  R::::R     R:::::R  R::::R     R:::::R  E:::::E       EEEEEE C:::::C       CCCCCC        T:::::T         !!! 
                      C:::::CCCCCCCC::::CO:::::::OOO:::::::ORR:::::R     R:::::RRR:::::R     R:::::REE::::::EEEEEEEE:::::E  C:::::CCCCCCCC::::C      TT:::::::TT           
                       CC:::::::::::::::C OO:::::::::::::OO R::::::R     R:::::RR::::::R     R:::::RE::::::::::::::::::::E   CC:::::::::::::::C      T:::::::::T       !!! 
                         CCC::::::::::::C   OO:::::::::OO   R::::::R     R:::::RR::::::R     R:::::RE::::::::::::::::::::E     CCC::::::::::::C      T:::::::::T      !!:!!
                            CCCCCCCCCCCCC     OOOOOOOOO     RRRRRRRR     RRRRRRRRRRRRRRR     RRRRRRREEEEEEEEEEEEEEEEEEEEEE        CCCCCCCCCCCCC      TTTTTTTTTTT       !!! 

  "
end

def self.game_over
                        puts "                                                                                                                
                                                          GGGGGGGGGGGGG               AAA               MMMMMMMM               MMMMMMMMEEEEEEEEEEEEEEEEEEEEEE
                                                       GGG::::::::::::G              A:::A              M:::::::M             M:::::::ME::::::::::::::::::::E
                                                     GG:::::::::::::::G             A:::::A             M::::::::M           M::::::::ME::::::::::::::::::::E
                                                    G:::::GGGGGGGG::::G            A:::::::A            M:::::::::M         M:::::::::MEE::::::EEEEEEEEE::::E
                                                   G:::::G       GGGGGG           A:::::::::A           M::::::::::M       M::::::::::M  E:::::E       EEEEEE
                                                  G:::::G                        A:::::A:::::A          M:::::::::::M     M:::::::::::M  E:::::E             
                                                  G:::::G                       A:::::A A:::::A         M:::::::M::::M   M::::M:::::::M  E::::::EEEEEEEEEE   
                                                  G:::::G    GGGGGGGGGG        A:::::A   A:::::A        M::::::M M::::M M::::M M::::::M  E:::::::::::::::E   
                                                  G:::::G    G::::::::G       A:::::A     A:::::A       M::::::M  M::::M::::M  M::::::M  E:::::::::::::::E   
                                                  G:::::G    GGGGG::::G      A:::::AAAAAAAAA:::::A      M::::::M   M:::::::M   M::::::M  E::::::EEEEEEEEEE   
                                                  G:::::G        G::::G     A:::::::::::::::::::::A     M::::::M    M:::::M    M::::::M  E:::::E             
                                                   G:::::G       G::::G    A:::::AAAAAAAAAAAAA:::::A    M::::::M     MMMMM     M::::::M  E:::::E       EEEEEE
                                                    G:::::GGGGGGGG::::G   A:::::A             A:::::A   M::::::M               M::::::MEE::::::EEEEEEEE:::::E
                                                     GG:::::::::::::::G  A:::::A               A:::::A  M::::::M               M::::::ME::::::::::::::::::::E
                                                       GGG::::::GGG:::G A:::::A                 A:::::A M::::::M               M::::::ME::::::::::::::::::::E
                                                          GGGGGG   GGGGAAAAAAA                   AAAAAAAMMMMMMMM               MMMMMMMMEEEEEEEEEEEEEEEEEEEEEE
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                 OOOOOOOOO     VVVVVVVV           VVVVVVVVEEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRR            
                                                               OO:::::::::OO   V::::::V           V::::::VE::::::::::::::::::::ER::::::::::::::::R           
                                                             OO:::::::::::::OO V::::::V           V::::::VE::::::::::::::::::::ER::::::RRRRRR:::::R          
                                                            O:::::::OOO:::::::OV::::::V           V::::::VEE::::::EEEEEEEEE::::ERR:::::R     R:::::R         
                                                            O::::::O   O::::::O V:::::V           V:::::V   E:::::E       EEEEEE  R::::R     R:::::R         
                                                            O:::::O     O:::::O  V:::::V         V:::::V    E:::::E               R::::R     R:::::R         
                                                            O:::::O     O:::::O   V:::::V       V:::::V     E::::::EEEEEEEEEE     R::::RRRRRR:::::R          
                                                            O:::::O     O:::::O    V:::::V     V:::::V      E:::::::::::::::E     R:::::::::::::RR           
                                                            O:::::O     O:::::O     V:::::V   V:::::V       E:::::::::::::::E     R::::RRRRRR:::::R          
                                                            O:::::O     O:::::O      V:::::V V:::::V        E::::::EEEEEEEEEE     R::::R     R:::::R         
                                                            O:::::O     O:::::O       V:::::V:::::V         E:::::E               R::::R     R:::::R         
                                                            O::::::O   O::::::O        V:::::::::V          E:::::E       EEEEEE  R::::R     R:::::R         
                                                            O:::::::OOO:::::::O         V:::::::V         EE::::::EEEEEEEE:::::ERR:::::R     R:::::R         
                                                             OO:::::::::::::OO           V:::::V          E::::::::::::::::::::ER::::::R     R:::::R         
                                                               OO:::::::::OO              V:::V           E::::::::::::::::::::ER::::::R     R:::::R         
                                                                 OOOOOOOOO                 VVV            EEEEEEEEEEEEEEEEEEEEEERRRRRRRR     RRRRRRR         
                                                                                                                                                             
                        "
end

def self.heart_break
# life = puts "                                                                                                                                                                         
# LLLLLLLLLLL             IIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEEEEEEE          LLLLLLLLLLL                  OOOOOOOOO        SSSSSSSSSSSSSSS TTTTTTTTTTTTTTTTTTTTTTT
# L:::::::::L             I::::::::IF::::::::::::::::::::FE::::::::::::::::::::E          L:::::::::L                OO:::::::::OO    SS:::::::::::::::ST:::::::::::::::::::::T
# L:::::::::L             I::::::::IF::::::::::::::::::::FE::::::::::::::::::::E          L:::::::::L              OO:::::::::::::OO S:::::SSSSSS::::::ST:::::::::::::::::::::T
# LL:::::::LL             II::::::IIFF::::::FFFFFFFFF::::FEE::::::EEEEEEEEE::::E          LL:::::::LL             O:::::::OOO:::::::OS:::::S     SSSSSSST:::::TT:::::::TT:::::T
#   L:::::L                 I::::I    F:::::F       FFFFFF  E:::::E       EEEEEE            L:::::L               O::::::O   O::::::OS:::::S            TTTTTT  T:::::T  TTTTTT
#   L:::::L                 I::::I    F:::::F               E:::::E                         L:::::L               O:::::O     O:::::OS:::::S                    T:::::T        
#   L:::::L                 I::::I    F::::::FFFFFFFFFF     E::::::EEEEEEEEEE               L:::::L               O:::::O     O:::::O S::::SSSS                 T:::::T        
#   L:::::L                 I::::I    F:::::::::::::::F     E:::::::::::::::E               L:::::L               O:::::O     O:::::O  SS::::::SSSSS            T:::::T        
#   L:::::L                 I::::I    F:::::::::::::::F     E:::::::::::::::E               L:::::L               O:::::O     O:::::O    SSS::::::::SS          T:::::T        
#   L:::::L                 I::::I    F::::::FFFFFFFFFF     E::::::EEEEEEEEEE               L:::::L               O:::::O     O:::::O       SSSSSS::::S         T:::::T        
#   L:::::L                 I::::I    F:::::F               E:::::E                         L:::::L               O:::::O     O:::::O            S:::::S        T:::::T        
#   L:::::L         LLLLLL  I::::I    F:::::F               E:::::E       EEEEEE            L:::::L         LLLLLLO::::::O   O::::::O            S:::::S        T:::::T        
# LL:::::::LLLLLLLLL:::::LII::::::IIFF:::::::FF           EE::::::EEEEEEEE:::::E          LL:::::::LLLLLLLLL:::::LO:::::::OOO:::::::OSSSSSSS     S:::::S      TT:::::::TT      
# L::::::::::::::::::::::LI::::::::IF::::::::FF           E::::::::::::::::::::E          L::::::::::::::::::::::L OO:::::::::::::OO S::::::SSSSSS:::::S      T:::::::::T      
# L::::::::::::::::::::::LI::::::::IF::::::::FF           E::::::::::::::::::::E          L::::::::::::::::::::::L   OO:::::::::OO   S:::::::::::::::SS       T:::::::::T      
# LLLLLLLLLLLLLLLLLLLLLLLLIIIIIIIIIIFFFFFFFFFFF           EEEEEEEEEEEEEEEEEEEEEE          LLLLLLLLLLLLLLLLLLLLLLLL     OOOOOOOOO      SSSSSSSSSSSSSSS         TTTTTTTTTTT      
                                                                                                                                                                             
# "

system 'clear'
  puts "
  
                                                                     ``  ``  `` ``` ``  ``  ``  ``  ``  ``  ``  ``  `` ``` ``` ``  ``  ``  ``  ``  ``  ``  ``  `` ``` `
                                                                  ``  ``  `` ``` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ```
                                                                    ``  `` ``` ``` ``` ``` `-...-.```  ``  ``  ``  `` ``` ``` ``` ````.-....` ``  ``  ``  `` ``` ``` `
                                                                  ``  `` ``` ``` ``` .-:/++ooooooooo+/:. ``  ``  `` ``` ``` ``` `://+oooooooo++::-` ``  `` ``` ``` ```
                                                                    `` ``` ``` ```.:+ooooooooooooooooooo+:.``  `` ``` ``` ````-+oooooooooooooooooo++:.``  `` ``` ``` `
                                                                  ``  `` ``` ``-:+ooooooooooooooooooooooooo+-.` ``` ``` ```./+oooooooooooooooooooooooo+:.` ``` ``` ```
                                                                    `` ``` ``-/oooooooooooooooooooooooooooooo+:.` ``` ```-+oooooooooooooooooooooooooooooo/-` ``` ``` `
                                                                  `` ``` ``-/oooooooooooooooooooooooooooooooooo+:.` ```-+oooooooooooooooooooooooooooooooooo/.` ``` ```
                                                                    `` ```:+ooooooooooooooooooooooooooooooooooooo+-```/ooooooooooooooooooooooooooooooooooooo+-`` ``` `
                                                                  `` ````/oooooooooooooooooooooooooooooooooooooooo+ `:oooooooooooooooooooooooooooooooooooooooo/``` ```
                                                                    `` `+ooooooooooooooooooooooooooooooooooooooooo/``/ooooooooooooooooooooooooooooooooooooooooo+```` `
                                                                  `` `.+oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo/` ```
                                                                    ``/oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo:`` `
                                                                  `` -oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo-```
                                                                    `+oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+` `
                                                                  ``.oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo.``
                                                                    /oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo: `
                                                                  ``+oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+``
                                                                    +oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+ `
                                                                  ``+oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+``
                                                                    /oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo/ `
                                                                  ``-oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo-``
                                                                    `+oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+` `
                                                                  `` .oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo.```
                                                                    ``:oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo/`` `
                                                                  `` `./oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo/` ```
                                                                   ``` `/oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo/```` `
                                                                  `` ``` /oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo/``` ```
                                                                   ``` ```:oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo/.` ``` `
                                                                  `` ``` ``.+oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+:` ``` ```
                                                                   ``` ``` `.:oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo/. ``` ``` `
                                                                  `` ``` ``` `-/oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+- ``` ``` ```
                                                                   ``` ``` ``` `-/oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+-```` ``` ``` `
                                                                  `` ``` ``` ``` `-+oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+-```` ``` ``` ```
                                                                   ``` ``` ``` ``` `-+oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+-```` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` .-/oooooooooooooooooooooooooooooooooooooooooooooooooooooooo+-```` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` `-/oooooooooooooooooooooooooooooooooooooooooooooooooooo+-```` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``` `-/oooooooooooooooooooooooooooooooooooooooooooooooo/-` `` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  `./+ooooooooooooooooooooooooooooooooooooooooooo/-` `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``` ``  `.:+oooooooooooooooooooooooooooooooooooooo+/.  `` ``` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  ``  `.-+oooooooooooooooooooooooooooooooooo+/.  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``` ``  ``  ``-+oooooooooooooooooooooooooooooo+:.  ``  `` ``` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  ``  ``  ``./oooooooooooooooooooooooooo/:.  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``` ``  ``  ``  ``./+oooooooooooooooooooo+/-`  ``  ``  ``  `` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  ``  ``  `` ````:+oooooooooooooooo+:.`` ``  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``  ``  ``  ``  `` ````-+oooooooooooo+-.`` ``  ``  ``  ``  `` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` -/oooooooo/-``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` .oooooo.``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` `` 
                                                                   ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` `` 
                                                                   ``` ``` ``` ``  ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``  ``  ``  ``  ``  ``  `` ``` ``` ``` ``` `

  "
  sleep 1
  system 'clear'
  puts "
  
                                                                     ``  ``  `` ``` ``  ``  ``  ``  ``  ``  ``  ``  `` ``` ``` ``  ``  ``  ``  ``  ``  ``  ``  `` ``` `
                                                                  ``  ``  `` ``` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ```
                                                                    ``  `` ``` ``` ``` ``` `-...-.```  ``  ``  ``  `` ``` ``` ``` ````.-....` ``  ``  ``  `` ``` ``` `
                                                                  ``  `` ``` ``` ``` .-:/++ooooooooo+/:. ``  ``  `` ``` ``` ``` `://+oooooooo++::-` ``  `` ``` ``` ```
                                                                    `` ``` ``` ```.:+ooooooooooooooooooo+:.``  `` ``` ``` ````-+oooooooooooooooooo++:.``  `` ``` ``` `
                                                                  ``  `` ``` ``-:+ooooooooooooooooooooooooo+-.` ``` ``` ```./+oooooooooooooooooooooooo+:.` ``` ``` ```
                                                                    `` ``` ``-/oooooooooooooooooooooooooooooo+:.` ``` ```-+oooooooooooooooooooooooooooooo/-` ``` ``` `
                                                                  `` ``` ``-/oooooooooooooooooooooooooooooooooo+:.` ```-+oooooooooooooooooooooooooooooooooo/.` ``` ```
                                                                    `` ```:+ooooooooooooooooooooooooooooooooooooo+-```/ooooooooooooooooooooooooooooooooooooo+-`` ``` `
                                                                  `` ````/oooooooooooooooooooooooooooooooooooooooo+ `:oooooooooooooooooooooooooooooooooooooooo/``` ```
                                                                    `` `+ooooooooooooooooooooooooooooooooooooooooo/``/ooooooooooooooooooooooooooooooooooooooooo+```` `
                                                                  `` `.+oooooooooooooooooooooooooooooooooooooooooo. `ooooooooooooooooooooooooooooooooooooooooooo/` ```
                                                                    ``/oooooooooooooooooooooooooooooooooooooooooo+``-oooooooooooooooooooooooooooooooooooooooooooo:`` `
                                                                  `` -ooooooooooooooooooooooooooooooooooooooooooo/` /ooooooooooooooooooooooooooooooooooooooooooooo-```
                                                                    `+ooooooooooooooooooooooooooooooooooooooooooo.`.oooooooooooooooooooooooooooooooooooooooooooooo+` `
                                                                  ``.oooooooooooooooooooooooooooooooooooooooooooo.`.ooooooooooooooooooooooooooooooooooooooooooooooo.``
                                                                    /oooooooooooooooooooooooooooooooooooooooooooo:``./ooooooooooooooooooooooooooooooooooooooooooooo: `
                                                                  ``+ooooooooooooooooooooooooooooooooooooooooooooo+-``./ooooooooooooooooooooooooooooooooooooooooooo+``
                                                                    +ooooooooooooooooooooooooooooooooooooooooooooooo+-``./ooooooooooooooooooooooooooooooooooooooooo+ `
                                                                  ``+ooooooooooooooooooooooooooooooooooooooooooooooooo+.``-+ooooooooooooooooooooooooooooooooooooooo+``
                                                                    /ooooooooooooooooooooooooooooooooooooooooooooooooooo+.`.-+ooooooooooooooooooooooooooooooooooooo/ `
                                                                  ``-oooooooooooooooooooooooooooooooooooooooooooooooooooo+. `.+oooooooooooooooooooooooooooooooooooo-``
                                                                    `+ooooooooooooooooooooooooooooooooooooooooooooooooo/- `-/+oooooooooooooooooooooooooooooooooooo+` `
                                                                  `` .ooooooooooooooooooooooooooooooooooooooooooooooo/. `-+ooooooooooooooooooooooooooooooooooooooo.```
                                                                    ``:ooooooooooooooooooooooooooooooooooooooooooo+:` `:+oooooooooooooooooooooooooooooooooooooooo/`` `
                                                                  `` `./oooooooooooooooooooooooooooooooooooooooo/-` ./oooooooooooooooooooooooooooooooooooooooooo/` ```
                                                                   ``` `/oooooooooooooooooooooooooooooooooooo+:.``-+ooooooooooooooooooooooooooooooooooooooooooo/```` `
                                                                  `` ``` /ooooooooooooooooooooooooooooooooo/-.`.:ooooooooooooooooooooooooooooooooooooooooooooo/``` ```
                                                                   ``` ```:ooooooooooooooooooooooooooooo+:..`-/oooooooooooooooooooooooooooooooooooooooooooooo/.` ``` `
                                                                  `` ``` ``.+oooooooooooooooooooooooooo/```-+oooooooooooooooooooooooooooooooooooooooooooooo+:` ``` ```
                                                                   ``` ``` `.:oooooooooooooooooooooooooo/``./ooooooooooooooooooooooooooooooooooooooooooooo/. ``` ``` `
                                                                  `` ``` ``` `-/ooooooooooooooooooooooooo+: `:+ooooooooooooooooooooooooooooooooooooooooo+- ``` ``` ```
                                                                   ``` ``` ``` `-/ooooooooooooooooooooooooo/. ./oooooooooooooooooooooooooooooooooooooo+-```` ``` ``` `
                                                                  `` ``` ``` ``` `-+oooooooooooooooooooooooo+-` -+oooooooooooooooooooooooooooooooooo+-```` ``` ``` ```
                                                                   ``` ``` ``` ``` `-+oooooooooooooooooooooooo/.``/ooooooooooooooooooooooooooooooo+-```` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` .-/ooooooooooooooooooooooo+-.`-+ooooooooooooooooooooooooooo+-```` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` `-/ooooooooooooooooooooooo/.``/oooooooooooooooooooooooo+-```` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``` `-/oooooooooooooooooooooo+-`.-+oooooooooooooooooooo/-` `` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  `./+ooooooooooooooooooooo/``.:ooooooooooooooooo/-` `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``` ``  `.:+oooooooooooooooooooo+. `/ooooooooooooo+/.  `` ``` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  ``  `.-+ooooooooooooooooooo.``+ooooooooooo+/.  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``` ``  ``  ``-+oooooooooooooooo/` -oooooooooo+:.  ``  `` ``` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  ``  ``  ``./oooooooooooooo.``+oooooooo/:.  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``` ``  ``  ``  ``./+oooooooooo+.`.oooooo+/-`  ``  ``  ``  `` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  ``  ``  `` ````:+oooooooo: `/oooo+:.`` ``  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``  ``  ``  ``  `` ````-+oooooo.``ooo+-.`` ``  ``  ``  ``  `` ``` ``` ``` ``` ```
                                                                   ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` -/ooo/` :o/-``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` .:+.``:.``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` `` 
                                                                   ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` `` 
                                                                   ``` ``` ``` ``  ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``  ``  ``  ``  ``  ``  `` ``` ``` ``` ``` `

  "
  sleep 1
  system 'clear'
  puts "
                                                                    ``  ``  `  ``  ``  ``  ``  ``  ``  ``  ``  ``  ``  `  ``  ``  ``  ``  ``  ``  ``  ``  ``  ``  `   
                                                                  ``  ``  `` ``` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ```
                                                                    ``  `` ``` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ```  
                                                                  ``  `` ``` ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ```
                                                                    `` ``` ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``````` ``  ``  ``  ``  `` ``` ```  
                                                                  ``  `` ``` ``` ``` ``` ``` ``` ``  ``  ``  `` ``` ``` ``` ``` ```  `  ``  ``  ``  ``  `` ``` ``` ```
                                                                    `` ``` ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``.:``` ``  ``  `````` ``` ``` ```  
                                                                  `` ``` ``` ``` ``` ```  `` ``` ``  ``  ``  `` ``` ``` ``` ``` ``` //  ``  ``  ``````` `` ``` ``` ```
                                                                    `` ``` ``` ``` ``` ```-``` ``  ``  ``  `` ``` ``` ``````` ``` `.oo``` ``  ``  `` ` ` ``` ``` ```  
                                                                  `` ``` ``` ``` ``` ``` `+/```` ``  ``  ``  `` ``` ``` ``````` ```+so` ``` ``  ``      `` ``` ``` `` 
                                                                    `` ``` ``` ``` ``` ```:s+-```` ``  ``  `` ``/```` ``` ``` ``` :oss-`` ``  ``  ``  `` ``` ``` ```  
                                                                  `` ``` ``` ```  `` ``` `-sso/. ``  ``  ``  ``.o/` ``` ``` ```  -oo++/::::-..` `````` ``` ```  `  ```
                                                                    `` ``` ```   ` ``` ````soss+-```.----..`` `+so-`` ``` ``` `.-osyhhhhhhhhhys+-```  `` ```  `` ```  
                                                                  `` ``` ``` ``  ``` ``` ``oso:-:+syyhhhhhyso/-:+oo- `` ``` `.:shhhhhhhhhhhhhhhhhy+.``  `` `.-```` ```
                                                                    `` ``` ``` ``` ``` ````o::oyhhhhhhhhhhhhhhhs/-+/....-.``-shhhhhhhhhhhhhhhhhhhhhy/````./+/``` ```  
                                                                  `` ``` ``` ``` ``` ``` ``:ohhhhhhhhhhhhhhhhhhy+/oyyhhhhys//shhhhhhhhhhhhhhhhhhhhhhho`-+oo:`` ``` ```
                                                                    `` ``` ``` ``` ``` ```.yhhhhhhhhhhhhhhhhhhs+yhhhhhhhhhhhho+hhhhhhhhhhhhhhhhhhhhhhh+`oo:  ``` ```  
                                                                  ``  `` ```` `` ``` ``` `yhhhhhhhhhhhhhhhhhhyohhhhhhhhhhhhhhhyohhhhhhhhhhhhhhhhhhhhhhh./:```` ``` ```
                                                                    `` ``` `.:-... ``` ``/hhhhhhhhhhhhhhhhhhhyhhhhhhhhhhhhhhhhhyhhhhhhhhhhhhhhhyyy++hshssssy. `` ```  
                                                                  `` ``` ``` `:oo++//://+yhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyhhhhhhddm.`s/dmmmmm.` ``` ```
                                                                    `` ``` ``` .+ooooo+//yhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyysssyhhhhhymmmmmmmmmmddd:`yysmmmmm.``` ```  
                                                                  `` ``` `...-/ooyyyyso+/+shhhhhhhhhhhhhhhhhhhhhhhhhhhhdddmmmdhso/ohsmmmmmmys+/::-..shommmmm-` ``` ```
                                                                    `` ```/dmmmmmmmmmmmmmds:/yhhhhhhhhhyyysooyhhhhhhdmmmmmmmmmmmmdo-:mmmmmm-`/+osyhhhhommmmm-``` ``` `
                                                                  `` ``` `/mmmmmmdhyyhdmmmmd/.shhddmmmmmmmmmho:+hhdmmmmmdhyyhdmmmmmy`hmmmmmo`+yyyy:-hhodmmmm-`o``` `` 
                                                                    `` ```-mmmmmm-`-:::hmmmmd..dmmmmmmmmmmmmmmd/.ymmmmmo.`-:-:ymmmmmosmmmmmmmmmmmm-`yhyymmmm-`y- ``` `
                                                                  `` ``` ``mmmmmm:`yhhhsmmmmm-`hmmmds/::/smmmmmm/`hmmm+`.yhhhh+hmmmmd/mmmmmmys+/:-``shhommmm-`y:`` `` 
                                                                    `` ``` hmmmmm/`shhhdmmmmo`.dmmh.`:oys+:dmmmmh`:mmm/`+shhhhysmmmmm.mmmmmm+`:+osyhhhh+ysso.`s` ``` `
                                                                  `` ```  `smmmmms/shhmmmmy:`.hmmm+`:sssssoommmmm.`dmmh.-shhhhydmmmmy`ymmmmmy`:hhhhhhhho::///+:``` `` 
                                                                    ``  .:.ommmmmmmmmdhs+-`.:hmmmms`:sssossymmmmd``dmmmd+/oyhddmmmmd.`ommmmmm.`hhhhhhhhhyyys+:`` ``` `
                                                                  ``   .--`/mmmmmy:-.`.-:+shh+mmmmmo./osssymmmmmo``ymmmmmdddmmmmmmy.`+ommmmmm/`shhhhhhhhddmdy` ``` `` 
                                                                  ``` ``` -mmmmmh`-yhhhhhhhh+ommmmmdyssydmmmmms``+:/sdmmmmmmmmds:`-shsdmmmmmy`:hhhhhhhoymmmy``` ``` `
                                                                  `` ``` ```mmmmmd`.hhhhhhhhhh+/ymmmmmmmmmmmmy/`.+ssy+::/ooo+/-..:shhhh++/:--..:hhhhhhhh/::-`  ``` `` 
                                                                  ``` ``` `hmmmmm.`hhhhhhhhhhhy/:+yhdddhhy+-`-/syhhhhhyso+++osyhhhhhhh++osyyyhhhhhhhhhhhy.+:``` ``` `
                                                                  `` ``` ```oyssoo.`yhhhhhhhhhhhhyo/:::---::+shhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+:so+-``` `` 
                                                                  ``` ``` `````` -/yhhhhohhhhhhhhhhhhsyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+`.-:/+/.``` `
                                                                  `` ``` ``` ``` ``/osyhh+shhhhhhhhhhhyyhhhhhhhhhhyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhho-`` ````..` `` 
                                                                  ``` ``` ``` ```.oososso-+hhhhhhhhhhhsshhhhhhhhhh/hhhhhhhhhhhhhhhhhhhhhyyyyyhhyyso/-.` ``` ``` ``  `
                                                                  `` ``` ``` ``` `/soo+:..` -+yhhhhhhhhhs+shhhhhhhho:yhhhhhhhhhhhhhhhhhhhhy-+/..-.```` ``` ``` ``` `` 
                                                                  ``` ``` ``` ``-+/-````  `` `-:+ossoo+/-://osyyyyy/-ohhhhhhhhhhhhhhhhhho-/so`` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ````.`  ``` ``` `` ``` `:/++/-.````-/++++--+shhhhhhhhhhhys/.`:oos- `` ``` ``` ``` ``` `` 
                                                                  ``` ``` ``` ``` ``` ``````  ``  ``oo:. ``` ```-oosso+:..:/+oooo+/:.`   `./oo` ``` ```  ``` `` ``` `
                                                                  `` ``` ``` ``` ``` ``````  ``  `` ./` ``` ``` ``-ososso-  `` ``  ```  ``  `.+/`` ``` ````` ` ``` `` 
                                                                  ``` ``` ``` ``` ``````` ``  ``  `` ``` ``` ``` `:ssso/```` ``` ``  ``  `` ``-- `` ``` `   ``` ``` `
                                                                  `` ``` ``` ``` ``` `````   ``  `````` ``` ``` ````+os+``` ``` ``` ``  ``  `` ``` ``` ``` ``` ``` `` 
                                                                  ``` ``` ``` ``` ```     ``  `` ``` ``` ``` ``` ``.oo.  ``` ``` ``` ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` `+/ ``` ``` ```` `  ``  ``  `` ``` ``` ``` ``` `` 
                                                                  ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ```.``` ``` ``  `` ```  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``  ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` `` 
                                                                  ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``` ``` ``  ``  ``  ``  `` ``` ``` ``` ``` ``` `
                                                                  `` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` ``` ``  ``  ``  ``  ``  `` ``` ``` ``` ``` `` 
                                                                    `` ``` ``` ``  ``  ``  ``  ``  ``  ``  ``  `` ``` ``` ``  ``  ``  ``  ``  ``  ``  ``  `` ``` ``` `

  "
  sleep 0.5
  system 'clear'
  self.wrong
end

def self.your_best
  puts "                                                                                                                                                                                                   
                              YYYYYYY       YYYYYYY     OOOOOOOOO     UUUUUUUU     UUUUUUUURRRRRRRRRRRRRRRRR        BBBBBBBBBBBBBBBBB   EEEEEEEEEEEEEEEEEEEEEE   SSSSSSSSSSSSSSS TTTTTTTTTTTTTTTTTTTTTTT
                              Y:::::Y       Y:::::Y   OO:::::::::OO   U::::::U     U::::::UR::::::::::::::::R       B::::::::::::::::B  E::::::::::::::::::::E SS:::::::::::::::ST:::::::::::::::::::::T
                              Y:::::Y       Y:::::Y OO:::::::::::::OO U::::::U     U::::::UR::::::RRRRRR:::::R      B::::::BBBBBB:::::B E::::::::::::::::::::ES:::::SSSSSS::::::ST:::::::::::::::::::::T
                              Y::::::Y     Y::::::YO:::::::OOO:::::::OUU:::::U     U:::::UURR:::::R     R:::::R     BB:::::B     B:::::BEE::::::EEEEEEEEE::::ES:::::S     SSSSSSST:::::TT:::::::TT:::::T
                              YYY:::::Y   Y:::::YYYO::::::O   O::::::O U:::::U     U:::::U   R::::R     R:::::R       B::::B     B:::::B  E:::::E       EEEEEES:::::S            TTTTTT  T:::::T  TTTTTT
                                 Y:::::Y Y:::::Y   O:::::O     O:::::O U:::::D     D:::::U   R::::R     R:::::R       B::::B     B:::::B  E:::::E             S:::::S                    T:::::T        
                                  Y:::::Y:::::Y    O:::::O     O:::::O U:::::D     D:::::U   R::::RRRRRR:::::R        B::::BBBBBB:::::B   E::::::EEEEEEEEEE    S::::SSSS                 T:::::T        
                                   Y:::::::::Y     O:::::O     O:::::O U:::::D     D:::::U   R:::::::::::::RR         B:::::::::::::BB    E:::::::::::::::E     SS::::::SSSSS            T:::::T        
                                    Y:::::::Y      O:::::O     O:::::O U:::::D     D:::::U   R::::RRRRRR:::::R        B::::BBBBBB:::::B   E:::::::::::::::E       SSS::::::::SS          T:::::T        
                                     Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U   R::::R     R:::::R       B::::B     B:::::B  E::::::EEEEEEEEEE          SSSSSS::::S         T:::::T        
                                     Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U   R::::R     R:::::R       B::::B     B:::::B  E:::::E                         S:::::S        T:::::T        
                                     Y:::::Y       O::::::O   O::::::O U::::::U   U::::::U   R::::R     R:::::R       B::::B     B:::::B  E:::::E       EEEEEE            S:::::S        T:::::T        
                                     Y:::::Y       O:::::::OOO:::::::O U:::::::UUU:::::::U RR:::::R     R:::::R     BB:::::BBBBBB::::::BEE::::::EEEEEEEE:::::ESSSSSSS     S:::::S      TT:::::::TT      
                                  YYYY:::::YYYY     OO:::::::::::::OO   UU:::::::::::::UU  R::::::R     R:::::R     B:::::::::::::::::B E::::::::::::::::::::ES::::::SSSSSS:::::S      T:::::::::T      
                                  Y:::::::::::Y       OO:::::::::OO       UU:::::::::UU    R::::::R     R:::::R     B::::::::::::::::B  E::::::::::::::::::::ES:::::::::::::::SS       T:::::::::T      
                                  YYYYYYYYYYYYY         OOOOOOOOO           UUUUUUUUU      RRRRRRRR     RRRRRRR     BBBBBBBBBBBBBBBBB   EEEEEEEEEEEEEEEEEEEEEE SSSSSSSSSSSSSSS         TTTTTTTTTTT      
  "
end
# def self.sam_say(str)
#     %x(say '#{str}') 
# end

end