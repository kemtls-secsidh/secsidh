import re
from typing import Set

FNAME_REGEX = re.compile(r"""
    ((.global|call)\s+(?P<name>(\w|\d)+))|
    (^(?P<label>(\d|\w)+):)
    """, re.VERBOSE)


def get_functionnames(filecontent: str) -> Set[str]:
    found = set()
    for line in filecontent.splitlines():
        if (match := FNAME_REGEX.search(line)) is not None:
            name = match.group("name") or match.group("label")
            if "secsidh_csidh_internal" in name or "secsidh_ctidh_internal" in name or name == "randombytes":
                continue
            found.add(name)
    return found


if __name__ == "__main__":
    import sys
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} prime file.s", file=sys.stderr)
        exit(1)
    prime = sys.argv[1]
    inputfilename = sys.argv[2]

    assert prime in ("2047k221", "4095k256", "5119k234", "6143k256", "8191k332", "9215k384")

    with open(inputfilename, "r") as fh:
        contents = fh.read()

    functionnames = get_functionnames(contents)

    for name in functionnames:
        contents = re.sub(fr"\b{name}\b", f"secsidh_csidh_internal_{prime}_{name}", contents)

    assert len(get_functionnames(contents)) == 0, f"missed {get_functionnames(contents)}"

    with open(inputfilename, "w") as fh:
        fh.write(contents)
