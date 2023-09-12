resource "aws_key_pair" "motivational-key" {
    key_name    = "motivational-key"
    public_key  = "${file("motivational-key.pub")}"
}
