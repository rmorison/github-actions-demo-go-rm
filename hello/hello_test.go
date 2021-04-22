package hello
import "testing"

func TestGreetsGitHub(t *testing.T) {
	const expected = "Ready for action and adventure?"
	result := Greet()
	if result != expected {
		t.Errorf("Greet() = %s; expected \"%s\"", result, expected)
	}
}
