defmodule OTPDocs do
  @cwd File.cwd!()

  def generate() do
    root = :code.lib_dir()

    File.cd!(root)

    root
    |> File.ls!()
    |> Enum.map(&make_docs/1)
  end

  def make_docs(dir) do
    [name, version] = String.split(dir, "-", parts: 2)

    "ex_doc #{dir} #{version} #{dir}/ebin -o #{@cwd}/docs/#{name}"
    |> IO.inspect()
    |> System.shell()
  end
end
