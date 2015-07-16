#class PhraseDict

  #attr_accessor :start_lang, :sec_lang, :phrase, :lang_array, :phrase_choices, :phrase_answers, :answer
  
  #def initialize(start=("English"))
    
    #@start_lang = start
    
    $en_lang_array = ["english", "spanish", "french (formal)", "french (informal)"]
    $sp_lang_array = ["inglés", "español", "francés (formal)", "francés (informal)"]
    $fr_lang_array = ["anglais", "espagnol", "français (poli)", "français (impoli)"]

    $en_phr_array = ["hello", "goodbye", "How are you?", "Good morning!", "Good afternoon!", "Good night!"]
    $sp_phr_array = ["hola", "adiós", "¿Cómo estás?", "¡Buenos días!", "¡Buenas tardes!", "¡Buenas noches!"]
    $fr_phrF_array = ["bonjour", "au revoir", "Comment allez-vous?", "Bonjour!", "Bon aprés-midi!", "Bonne nuit!"]
    $fr_phrI_array = ["salut", "au revoir", "Comment vas-tu?", "Bonjour!", "Bonjour!", "Bonne nuit!"]

$lang_array = []
$phrase_choices = []
$phrase_answers = []
$answer = ""
    
  #end

  def primary_lang(choice1)
    #@start_lang = choice1
    if choice1 == "English"
      $lang_array = $en_lang_array
      $phrase_choices = $en_phr_array
      puts "test"
      puts $en_lang_array
      puts $sp_lang_array
      puts $fr_lang_array
      puts $lang_array
    elsif choice1 == "Español"
      $lang_array = $sp_lang_array
      $phrase_choices = $sp_phr_array
    elsif choice1 == "Français"
      $lang_array = $fr_lang_array
      $phrase_choices = $fr_phrF_array
    end
    #return @lang_array
  end

  def second_lang(choice2)
    if choice2 == $lang_array[0]
      $phrase_answers = $en_phr_array
    elsif choice2 == $lang_array[1]
      $phrase_answers = $sp_phr_array
    elsif choice2 == $lang_array[2]
      $phrase_answers = $fr_phrF_array
    elsif choice2 == $lang_array[3]
      $phrase_answers = $fr_phrI_array
    end
    #return @phrase_answers
  end
  
  
  def phrase_choice(choice3)
    if choice3 == $phrase_choices[0]
      $answer = $phrase_answers[0]
    elsif choice3 == $phrase_choices[1]
      $answer = $phrase_answers[1]
    elsif choice3 == $phrase_choices[2]
      $answer = $phrase_answers[2]
    elsif choice3 == $phrase_choices[3]
      $answer = $phrase_answers[3]
    elsif choice3 == $phrase_choices[4]
      $answer = $phrase_answers[4]
    elsif choice3 == $phrase_choices[5]
      $answer = $phrase_answers[5]
    end
    return $answer
  end
  
#end

=begin
ink = PhraseDict.new
ink.primary_lang("English")
ink.second_lang("French (formal)")
puts ink.phrase_choice("hello")
=end