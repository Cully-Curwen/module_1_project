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
  puts_super_super_fast"

                                                                                                                                                                                                
                                                                                                                                                                                                
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
                puts_super_super_fast "
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

def self.you_suck
puts_super_super_fast "                                                                                                                                                                           
                    YYYYYYY       YYYYYYY     OOOOOOOOO     UUUUUUUU     UUUUUUUU             SSSSSSSSSSSSSSS UUUUUUUU     UUUUUUUU        CCCCCCCCCCCCCKKKKKKKKK    KKKKKKK !!! 
                    Y:::::Y       Y:::::Y   OO:::::::::OO   U::::::U     U::::::U           SS:::::::::::::::SU::::::U     U::::::U     CCC::::::::::::CK:::::::K    K:::::K!!:!!
                    Y:::::Y       Y:::::Y OO:::::::::::::OO U::::::U     U::::::U          S:::::SSSSSS::::::SU::::::U     U::::::U   CC:::::::::::::::CK:::::::K    K:::::K!:::!
                    Y::::::Y     Y::::::YO:::::::OOO:::::::OUU:::::U     U:::::UU          S:::::S     SSSSSSSUU:::::U     U:::::UU  C:::::CCCCCCCC::::CK:::::::K   K::::::K!:::!
                    YYY:::::Y   Y:::::YYYO::::::O   O::::::O U:::::U     U:::::U           S:::::S             U:::::U     U:::::U  C:::::C       CCCCCCKK::::::K  K:::::KKK!:::!
                       Y:::::Y Y:::::Y   O:::::O     O:::::O U:::::D     D:::::U           S:::::S             U:::::D     D:::::U C:::::C                K:::::K K:::::K   !:::!
                        Y:::::Y:::::Y    O:::::O     O:::::O U:::::D     D:::::U            S::::SSSS          U:::::D     D:::::U C:::::C                K::::::K:::::K    !:::!
                         Y:::::::::Y     O:::::O     O:::::O U:::::D     D:::::U             SS::::::SSSSS     U:::::D     D:::::U C:::::C                K:::::::::::K     !:::!
                          Y:::::::Y      O:::::O     O:::::O U:::::D     D:::::U               SSS::::::::SS   U:::::D     D:::::U C:::::C                K:::::::::::K     !:::!
                           Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U                  SSSSSS::::S  U:::::D     D:::::U C:::::C                K::::::K:::::K    !:::!
                           Y:::::Y       O:::::O     O:::::O U:::::D     D:::::U                       S:::::S U:::::D     D:::::U C:::::C                K:::::K K:::::K   !!:!!
                           Y:::::Y       O::::::O   O::::::O U::::::U   U::::::U                       S:::::S U::::::U   U::::::U  C:::::C       CCCCCCKK::::::K  K:::::KKK !!! 
                           Y:::::Y       O:::::::OOO:::::::O U:::::::UUU:::::::U           SSSSSSS     S:::::S U:::::::UUU:::::::U   C:::::CCCCCCCC::::CK:::::::K   K::::::K     
                        YYYY:::::YYYY     OO:::::::::::::OO   UU:::::::::::::UU            S::::::SSSSSS:::::S  UU:::::::::::::UU     CC:::::::::::::::CK:::::::K    K:::::K !!! 
                        Y:::::::::::Y       OO:::::::::OO       UU:::::::::UU              S:::::::::::::::SS     UU:::::::::UU         CCC::::::::::::CK:::::::K    K:::::K!!:!!
                        YYYYYYYYYYYYY         OOOOOOOOO           UUUUUUUUU                 SSSSSSSSSSSSSSS         UUUUUUUUU              CCCCCCCCCCCCCKKKKKKKKK    KKKKKKK !!! 

"
end
# def self.sam_say(str)
#     %x(say '#{str}') 
# end

end