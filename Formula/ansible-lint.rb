class AnsibleLint < Formula
  include Language::Python::Virtualenv

  desc "Checks ansible playbooks for practices and behaviour"
  homepage "https://github.com/ansible/ansible-lint/"
  url "https://files.pythonhosted.org/packages/46/5a/b9d8b7ab2cc018e5835d220ab5159710713245b3b7f84c8dc1e2aae5d234/ansible-lint-6.5.2.tar.gz"
  sha256 "f4432c74c0f28b2870a188b4999592f6338042f30d0c6f4ee11b32440ca9ffe4"
  license all_of: ["MIT", "GPL-3.0-or-later"]

  bottle do
    sha256 cellar: :any,                 arm64_monterey: "04cc3bad20abb9c70a69361ae63142aa09432e750a0f8901166d1261336b45f4"
    sha256 cellar: :any,                 arm64_big_sur:  "4bed29cfeb704700e2505769c7e4dc086ecbcee5eab05a0849bae8498af3d4dd"
    sha256 cellar: :any,                 monterey:       "389eef74d16bcfc93e7b3158782275934fd7934c6bb7f8a08844407f402311bf"
    sha256 cellar: :any,                 big_sur:        "1dbf9af7b91f2f9ffd060dd235d841b5cea3ef891a7b10170df159fa3a93cc15"
    sha256 cellar: :any,                 catalina:       "2fd56d435902a403b581bc6eb12677370d85d357177d2c484ce18bc92e6a3e83"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "b954dc9c0967ad91c295c0525c63632b5ec03924c9b9bafac9793a7e9c589b4c"
  end

  depends_on "pkg-config" => :build
  depends_on "rust" => :build # for cryptography
  depends_on "ansible"
  depends_on "libyaml"
  depends_on "python@3.10"

  resource "ansible-compat" do
    url "https://files.pythonhosted.org/packages/b0/5b/f65a7008ed0880b8585d0e4c3fab785c061cc28f62ee6c2beecee0d99238/ansible-compat-2.2.0.tar.gz"
    sha256 "676db8ec0449d1f07038625b8ebb8ceef5f8ad3a1af3ee82d4ed66b9b04cb6fa"
  end

  resource "ansible-core" do
    url "https://files.pythonhosted.org/packages/71/4e/9c6b365a6c49c9d2c7f63c72dfc35cf36f9261f50015166dc4a5ffc88a55/ansible-core-2.13.3.tar.gz"
    sha256 "eec5042530ff1c0c8d13a36fa047c6dd9157efeefd464a856b4ce38be4cd1988"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/1a/cb/c4ffeb41e7137b23755a45e1bfec9cbb76ecf51874c6f1d113984ecaa32c/attrs-22.1.0.tar.gz"
    sha256 "29adc2665447e5191d0e7c568fde78b21f9672d344281d0c6e1ab085429b22b6"
  end

  resource "black" do
    url "https://files.pythonhosted.org/packages/3a/1b/38a013f75022fae724ed766fdac5f6777544c45eecbe00a6d8fd91a2a26b/black-22.8.0.tar.gz"
    sha256 "792f7eb540ba9a17e8656538701d3eb1afcb134e3b45b71f20b25c77a8db7e6e"
  end

  resource "bracex" do
    url "https://files.pythonhosted.org/packages/b3/96/d53e290ddf6215cfb24f93449a1835eff566f79a1f332cf046a978df0c9e/bracex-2.3.post1.tar.gz"
    sha256 "e7b23fc8b2cd06d3dec0692baabecb249dda94e06a617901ff03a6c56fd71693"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
    sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "commonmark" do
    url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
    sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/89/d9/5fcd312d5cce0b4d7ee8b551a0ea99e4ea9db0fdbf6dd455a19042e3370b/cryptography-37.0.4.tar.gz"
    sha256 "63f9c17c0e2474ccbebc9302ce2f07b55b3b3fcb211ded18a42d5764f5c10a82"
  end

  resource "enrich" do
    url "https://files.pythonhosted.org/packages/bb/77/cb9b3d6f2e2e5f8104e907ea4c4d575267238f52c51cf9f864b865a99710/enrich-1.2.7.tar.gz"
    sha256 "0a2ab0d2931dff8947012602d1234d2a3ee002d9a355b5d70be6bf5466008893"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/95/55/b897882bffb8213456363e646bf9e9fa704ffda5a7d140edf935a9e02c7b/filelock-3.8.0.tar.gz"
    sha256 "55447caa666f2198c5b6b13a26d2084d26fa5b115c00d065664b2124680c4edc"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/7a/ff/75c28576a1d900e87eb6335b063fab47a8ef3c8b4d88524c4bf78f670cce/Jinja2-3.1.2.tar.gz"
    sha256 "31351a702a408a9e7595a8fc6150fc3f43bb6bf7e319770cbc0db9df9437e852"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/7c/0d/d19c78ccd17814818497fb4be515638fd707afd98d7dc102f0ad7297e0da/jsonschema-4.15.0.tar.gz"
    sha256 "21f4979391bdceb044e502fd8e79e738c0cdfbdc8773f9a49b5769461e82fe1e"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/1d/97/2288fe498044284f39ab8950703e88abbac2abbdf65524d576157af70556/MarkupSafe-2.1.1.tar.gz"
    sha256 "7f91197cc9e48f989d12e4e6fbc46495c446636dfc81b9ccf50bb0ec74b91d4b"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/63/60/0582ce2eaced55f65a4406fc97beba256de4b7a95a0034c6576458c6519f/mypy_extensions-0.4.3.tar.gz"
    sha256 "2d82818f5bb3e369420cb3c4060a7970edba416647068eb4c5343488a6c604a8"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/9e/d1a7217f69310c1db8fdf8ab396229f55a699ce34a203691794c5d1cad0c/packaging-21.3.tar.gz"
    sha256 "dd47c42927d89ab911e606518907cc2d3a1f38bbd026385970643f9c5b8ecfeb"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/03/45/41884de3da7c1012c729fc6fdad25d6b7906c69f5aaf4b23238ac8acfced/pathspec-0.10.0.tar.gz"
    sha256 "01eecd304ba0e6eeed188ae5fa568e99ef10265af7fd9ab737d6412b4ee0ab85"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/ff/7b/3613df51e6afbf2306fc2465671c03390229b55e3ef3ab9dd3f846a53be6/platformdirs-2.5.2.tar.gz"
    sha256 "58c8abb07dcb441e6ee4b11d8df0ac856038f944ab98b7be6b27b2a3c7feef19"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
    sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/e0/ef/5905cd3642f2337d44143529c941cc3a02e5af16f0f65f81cbef7af452bb/Pygments-2.13.0.tar.gz"
    sha256 "56a8508ae95f98e2b9bdf93a6be5ae3f7d8af858b43e02c5a2ff083726be40c1"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/71/22/207523d16464c40a0310d2d4d8926daffa00ac1f5b1576170a32db749636/pyparsing-3.0.9.tar.gz"
    sha256 "2b020ecf7d21b687f219b71ecad3631f644a47f01403fa1d1036b0c6416d70fb"
  end

  resource "pyrsistent" do
    url "https://files.pythonhosted.org/packages/42/ac/455fdc7294acc4d4154b904e80d964cc9aae75b087bbf486be04df9f2abd/pyrsistent-0.18.1.tar.gz"
    sha256 "d4d61f8b993a7255ba714df3aca52700f8125289f84f704cf80916517c46eb96"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
    sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
  end

  resource "resolvelib" do
    url "https://files.pythonhosted.org/packages/ac/20/9541749d77aebf66dd92e2b803f38a50e3a5c76e7876f45eb2b37e758d82/resolvelib-0.8.1.tar.gz"
    sha256 "c6ea56732e9fb6fca1b2acc2ccc68a0b6b8c566d8f3e78e0443310ede61dbd37"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/bb/2d/c902484141330ded63c6c40d66a9725f8da5e818770f67241cf429eef825/rich-12.5.1.tar.gz"
    sha256 "63a5c5ce3673d3d5fbbf23cd87e11ab84b6b451436f1b7f19ec54b6bc36ed7ca"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/46/a9/6ed24832095b692a8cecc323230ce2ec3480015fbfa4b79941bd41b23a3c/ruamel.yaml-0.17.21.tar.gz"
    sha256 "8b7ce697a2f212752a35c1ac414471dc16c424c9573be4926b56ff3f5d23b7af"
  end

  resource "ruamel.yaml.clib" do
    url "https://files.pythonhosted.org/packages/8b/25/08e5ad2431a028d0723ca5540b3af6a32f58f25e83c6dda4d0fcef7288a3/ruamel.yaml.clib-0.2.6.tar.gz"
    sha256 "4ff604ce439abb20794f05613c374759ce10e3595d1867764dd1ae675b85acbd"
  end

  resource "subprocess-tee" do
    url "https://files.pythonhosted.org/packages/48/20/a38a078b58532bd44c4c189c85cc650268d1894a1dcc7080b6e7e9cfe7bb/subprocess-tee-0.3.5.tar.gz"
    sha256 "ff5cced589a4b8ac973276ca1ba21bb6e3de600cde11a69947ff51f696efd577"
  end

  resource "tomli" do
    url "https://files.pythonhosted.org/packages/c0/3f/d7af728f075fb08564c5949a9c95e44352e23dee646869fa104a3b2060a3/tomli-2.0.1.tar.gz"
    sha256 "de526c12914f0c550d15924c62d72abc48d6fe7364aa87328337a31007fe8a4f"
  end

  resource "wcmatch" do
    url "https://files.pythonhosted.org/packages/95/b3/597b79292584de5b790146871e50cf3cb3bf37cf845232a20123fc784ef2/wcmatch-8.4.tar.gz"
    sha256 "ba4fc5558f8946bf1ffc7034b05b814d825d694112499c86035e0e4d398b6a67"
  end

  resource "yamllint" do
    url "https://files.pythonhosted.org/packages/54/21/4bcf449477392d5896128ee1e21dfb7ab640a77e338a2e34748cf38fed0a/yamllint-1.27.1.tar.gz"
    sha256 "e688324b58560ab68a1a3cff2c0a474e3fed371dfe8da5d1b9817b7df55039ce"
  end

  def install
    virtualenv_install_with_resources
    site_packages = Language::Python.site_packages("python3.10")
    ansible = Formula["ansible"].opt_libexec
    (libexec/site_packages/"homebrew-ansible.pth").write ansible/site_packages
  end

  test do
    ENV["ANSIBLE_REMOTE_TEMP"] = testpath/"tmp"
    (testpath/"playbook.yml").write <<~EOS
      ---
      - hosts: all
        gather_facts: false
        tasks:
        - name: ping
          ansible.builtin.ping:
    EOS
    system bin/"ansible-lint", testpath/"playbook.yml"
  end
end
