import pyspark
import pandas as pd


def main():
    print("Printing version of pre-installed packages")
    print(pd.__version__)
    print(pyspark.__version__)


if __name__ == "__main__":
    main()
