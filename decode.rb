def decode_morse_char(morse_char)
  morse = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
            '.' => 'E', '..-.' => 'F', '--.' => 'G',
            '....' => 'H', '..' => 'I', '.---' => 'J',
            '-.-' => 'K', '.-..' => 'L', '--' => 'M',
            '-.' => 'N', '---' => 'O', '.--.' => 'P',
            '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
            '-' => 'T', '..-' => 'U', '...-' => 'V',
            '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
            '--..' => 'Z', '.----' => '1', '..---' => '2',
            '...--' => '3', '....-' => '4', '.....' => '5',
            '-....' => '6', '--...' => '7', '---..' => '8',
            '----.' => '9', '-----' => '0', ' ' => ' ' }
  morse[morse_char]
end

puts decode_morse_char('.-')

def decode_morse_word(morse_word)
  morse_word.split.map{ |morse_char| decode_morse_char(morse_char)}.join
end

puts decode_morse_word('.- -... -.-. -.. .')

def decode_morse_message(morse_message)
  morse_message.split('  ').map { |morse_word| decode_morse_word(morse_word) }.join(' ')
end

puts decode_morse_message('.- -... -.-. -.. .  .-.. .- --.. -.--  - .... .  .. ...  .-- --- .-. .-.. -..')

# Code from The bottle
MESSAGE = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'.freeze

puts decode_morse_message(MESSAGE)

# Thank you Microverse for the opportunity to learn and grow as a developer.
