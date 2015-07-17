#class PhraseDict

  #attr_accessor :start_lang, :sec_lang, :phrase, :lang_array, :phrase_choices, :phrase_answers, :answer
  
  #def initialize(start=("English"))
    
    #@start_lang = start
$phrase = ""
$lang2 = ""
    
$en_lang_array = ["english", "spanish", "french (formal)", "french (informal)", "german"]
$sp_lang_array = ["inglés", "español", "francés (formal)", "francés (informal)", "alemán"]
$fr_lang_array = ["anglais", "espagnol", "français (poli)", "français (impoli)", "allemand"]
$ger_lang_array = ["englisch", "spanisch", "französisch (höflich)", "französisch (unhöflich)", "deutsch"]

    $en_phr_array = ["hello", "goodbye", "How are you?", "Good morning!", "Good afternoon!", "Good night!", "Thank you!", "please", "You're welcome!", "Excuse me", "Sorry"]
    $sp_phr_array = ["hola", "adiós", "¿Cómo estás?", "¡Buenos días!", "¡Buenas tardes!", "¡Buenas noches!", "¡Gracias!", "por favor", "de nada", "Compermiso", "Perdón"]
    $fr_phrF_array = ["bonjour", "au revoir", "Comment allez-vous?", "Bonjour!", "Bon aprés-midi!", "Bonne nuit!", "Merci!", "s'il vous plaît", "Je vous en prie", "Pardonnez-moi", "Je suis désolé(e)"]
    $fr_phrI_array = ["salut", "au revoir", "Comment vas-tu?", "Bonjour!", "Bonjour!", "Bonne nuit!", "Merci!", "s'il te plaît", "Je t'en prie", "Pardonnez-moi", "Je suis désolé(e)"]
$ger_phr_array = ["hallo", "auf Wiedersehen", "Wie geht es Ihnen?", "Guten Morgen!", "Guten Tag!", "Gute Nacht!", "Danke!", "bitte", "Bitte sehr!", "Entschuldigen Sie", "Entschuldigung"]

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
      puts $ger_lang_array
      puts $lang_array
    elsif choice1 == "Español"
      $lang_array = $sp_lang_array
      $phrase_choices = $sp_phr_array
    elsif choice1 == "Français"
      $lang_array = $fr_lang_array
      $phrase_choices = $fr_phrF_array
    elsif choice1 == "Deutsch"
      $lang_array = $ger_lang_array
      $phrase_choices = $ger_phr_array
    end
    #return @lang_array
  end

  def second_lang(choice2)
    $lang2 = choice2
    puts $lang2
    if choice2 == $lang_array[0]
      $phrase_answers = $en_phr_array
    elsif choice2 == $lang_array[1]
      $phrase_answers = $sp_phr_array
    elsif choice2 == $lang_array[2]
      $phrase_answers = $fr_phrF_array
    elsif choice2 == $lang_array[3]
      $phrase_answers = $fr_phrI_array
    elsif choice2 == $lang_array[4]
      $phrase_answers = $ger_phr_array
    end
    #return @phrase_answers
  end
  
  
  def phrase_choice(choice3)
    $phrase = choice3
    puts choice3
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
    elsif choice3 == $phrase_choices[6]
      $answer = $phrase_answers[6]
    elsif choice3 == $phrase_choices[7]
      $answer = $phrase_answers[7]
    elsif choice3 == $phrase_choices[8]
      $answer = $phrase_answers[8]
    elsif choice3 == $phrase_choices[9]
      $answer = $phrase_answers[9]
    elsif choice3 == $phrase_choices[10]
      $answer = $phrase_answers[10]
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