function playAGame {
  param (
    [string] [Parameter(Mandatory=$false)] $message
  )

  return [System.Windows.MessageBox]::Show($message,'Game  input','YesNoCancel','Error')
}

$msgBoxInput = playAGame "Would you like to play a game?"
  switch  ($msgBoxInput) {
  'Yes' {
    playAGame "The Sewer Lines Run Under This Neighborhood Too, Doctor."
  }
  'No' {
    playAGame "Game Over."
  }
  'Cancel' {
    playAGame "It's The Rules."
  }
}

