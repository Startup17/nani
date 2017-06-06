class HomeController < ApplicationController
  def keyboard
    
    
    #keyboard ={"type : text"}
    keyboard={"type" => "buttons", "buttons" => ["오늘의 음악", "오늘의 색깔", "오늘의 식당", "주사위", "사다리", "홀짝", "주사위 두개", "가위, 바위, 보"]}
    render json: keyboard
    
  end
  
  def message
    
    user_message = params[:content]
    
    @music = rand(0..22)
    @color = (0..10).to_a.sample
    @menu = (0..20).to_a.sample
    
    case user_message
      when "주사위"
        return_message = rand(1..6)
      when "사다리"
        return_message = (0..1).to_a.sample
        if return_message == 1
          return_message = "당첨"
        else
          return_message = "꽝"
        end
     
      when "주사위 두개"
        return_message = (1..6).to_a.sample(2)
      when "홀짝"
        return_message = (0..1).to_a.sample
        if return_message == 0
          return_message = "홀"
        else
          return_message = "짝"
        end
      when "가위, 바위, 보"
        return_message = (0..2).to_a.sample
        if return_message == 0 
          return_message = "가위"
        end
        if return_message == 1 
          return_message = "바위"
        end
        if return_message == 2 
          return_message = "보"
        end  
      when "오늘의 음악"
        case @music 
          when 0
          return_message = "https://youtu.be/0zPd_yzmuM8"
          when 1
          return_message = "https://youtu.be/NTjGmp5MTV4"
          when 2
          return_message = "https://youtu.be/uviU-WPqKng"
          when 3
          return_message = "https://youtu.be/5JxgDJvqGmM"
          when 4
          return_message = "https://youtu.be/EZ0hCATlcgY"
          when 5
          return_message = "https://youtu.be/-gZlOkTAU08"
          when 6
          return_message = "https://youtu.be/gTkRloo93Jk"
          when 7
          return_message = "https://youtu.be/YA6G74gk6R8"
          when 8
          return_message = "https://youtu.be/S5Gzu5YHsPo"
          when 9
          return_message = "https://youtu.be/0dRo5Kbgx6c"
          when 10
          return_message = "https://youtu.be/Aq_gsctWHtQ"
          when 11
          return_message = "https://youtu.be/b87dBaL4qI0"
          when 12
          return_message = "https://youtu.be/RhU9MZ98jxo"
          when 13
          return_message = "https://youtu.be/PT2_F-1esPk"
          when 14
          return_message = "https://youtu.be/iq4dlD8h5dg"
          when 15
          return_message = "https://youtu.be/BzYnNdJhZQw"
          when 16
          return_message = "https://youtu.be/if67rKkjm4I"
          when 17
          return_message = "https://youtu.be/3gyP8De1Jac"
          when 18
          return_message = "https://youtu.be/5mG83zChgiQ"
          when 19
          return_message = "https://youtu.be/u4-ossqoTi0"
          when 20
          return_message = "https://youtu.be/dCXid3ysLI0"
          when 21
          return_message = "https://youtu.be/_VwDnylytIA"
          when 22
          return_message = "https://youtu.be/pZ6xuFE9F4A"
          
            
        end 
      when "오늘의 색깔"
        case @color
          when 0
          return_message = "깨끗한 하얀색"
          when 1
          return_message = "강렬한 빨강"
          when 2
          return_message = "깔끔한 검정"
          when 3
          return_message = "신사적인 베이지"
          when 4
          return_message = "화려한 패턴"
          when 5
          return_message = "무난하면서 깔끔한 남색"
          when 6
          return_message = "당당한 노랑"
          when 7
          return_message = "따뜻한 갈색"
          when 8
          return_message = "시원한 파랑"
          when 9
          return_message = "힐링되는 초록"
          when 10
          return_message = "밝고 깨끗한 연두"
        end
      when "오늘의 식당"
        case @menu
          when 0
          return_message = " ??? : 일생 학식 고 "
          when 1
          return_message = "가난한 지갑을 위한 공대매점"
          when 2
          return_message = "그날그날 메뉴가 롤러코스터인 해뜰마루"
          when 3
          return_message = "빨리는 나오는 스피드반점"
          when 4
          return_message = "이름 그대로 오므라이스가 밥 밖에없는 밥스"
          when 5
          return_message = "자극적인 양념삼겹살 용봉골"
          when 6
          return_message = "점심 때 안가면 싼편은 아닌 맞불작전"
          when 7
          return_message = "가난하고 살찐 나를 위한 굶기"
          when 8
          return_message = "다른맛보다 싼맛으로 가는 골목대장"
          when 9
          return_message = "알바 교육이 시급한 김피라"
          when 10
          return_message = "아직 안먹어 봤지만 유명한 바론떡볶이"
          when 11
          return_message = "엄청난 나트륩 함유량을 자랑하는 국밥의 맛집 ' 담소 소사골국밥 ' "
          when 12
          return_message = "따뜻한 어머니의 사랑이 담긴 집밥"
          when 13
          return_message = "열량이 약 1000kcal인 햄버거 세트"
          when 14
          return_message = "지갑을 박살내는 파파존스"
          when 15
          return_message = "돈많은 금수저를 위한 로니로티"
          when 16
          return_message = "식당은 깔끔하나 주인부터 알바까지 이름값 못하고 노답인 최고당"
          when 17
          return_message = "바쁘고 가난한(?) 학생을 위한 도스마스"
          when 18
          return_message = " ??? : 고기가 땡기면 서래 고? "
          when 19
          return_message = "해장은 역시 남자탕"
          when 20
          return_message = " ??? : 난 털보가 제일싫어 하지만 털보를 가자"
        end   
        
        
    end
    
    keyboard_message={"type" => "buttons", "buttons" => ["오늘의 음악", "오늘의 색깔", "오늘의 식당","주사위", "사다리", "홀짝", "주사위 두개", "가위, 바위, 보"]}

    message = {"message"=>{"text" => "당신의 '#{user_message}'은(는) ' #{return_message} ' 입니다" }, "keyboard" => keyboard_message}
    render json: message
    
  end
end
