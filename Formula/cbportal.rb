class Cbportal < Formula
  include Language::Python::Virtualenv

  url "https://github.com/mcrepeau/cbportal/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3e6e4e0b5a39a8dc3105be56cc92af0ee6f59a8012004c20847ddaecb422228f"

  depends_on "python@3.9"

  resource "paho-mqtt" do
    url "https://files.pythonhosted.org/packages/73/b7/a4df0f93bbdae237e16ba402752151eceee576cbe80c235a2475fbf81eea/paho_mqtt-2.0.0.tar.gz"
    sha256 "13b205f29251e4f2c66a6c923c31fc4fd780561e03b2d775cff8e4f2915cf947"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/f8/3e/32cbd0129a28686621434cbf17bb64bf1458bfb838f1f668262fefce145c/pillow-10.2.0.tar.gz"
    sha256 "e87f0b2c78157e12d7686b27d63c070fd65d994e8ddae6f328e0dcf4a0cd007e"
  end

  resource "xkcdpass" do
    url "https://files.pythonhosted.org/packages/31/f8/14f147b1c7407ce70000ccd1819295c5d3c328d8ebed0840bb461ba71655/xkcdpass-1.19.9.tar.gz"
    sha256 "a94f871bda870668e5c65eb84296e939600362df2cc036b91c5ca3815bd292d7"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/13/9e/a55763a32d340d7b06d045753c186b690e7d88780cafce5f88cb931536be/cryptography-42.0.5.tar.gz"
    sha256 "6fe07eec95dfd477eb9530aef5bead34fec819b3aaf6c5bd6d20565da607bfe1"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/cbportal", "--version"
  end
end
