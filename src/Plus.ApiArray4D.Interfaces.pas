unit Plus.ApiArray4D.Interfaces;

interface

type
  iApiArray4D = interface
    ['{A10FD79A-8A0F-49EA-B00A-D82325AF29C1}']
    function ApiArray(const lArray: TArray<String>): iApiArray4D; overload;
    function ApiArray(const lArray: array of string): iApiArray4D; overload;
    function ApiArray(const lArray: TArray<Integer>): iApiArray4D; overload;
    function ApiArray(const lArray: array of Integer): iApiArray4D; overload;
    function ApiArray(const lArray: TArray<Currency>): iApiArray4D; overload;
    function ApiArray(const lArray: array of Currency): iApiArray4D; overload;
    function ApiArray(const lArray: TArray<double>): iApiArray4D; overload;
    function ApiArray(const lArray: array of double): iApiArray4D; overload;
    function Contains(const aValue: String): Boolean; overload;
    function Contains(const aValue: Integer): Boolean; overload;
    function Contains(const aValue: Currency): Boolean; overload;
    function Contains(const aValue: double): Boolean; overload;
    function Contains(const aValue: String; lArray: TArray<String>)
      : Boolean; overload;
    function Contains(const aValue: Integer; lArray: TArray<Integer>)
      : Boolean; overload;
    function Contains(const aValue: Currency; lArray: TArray<Currency>)
      : Boolean; overload;
    function Contains(const aValue: String; lArray: array of string)
      : Boolean; overload;
    function Contains(const aValue: Integer; lArray: array of Integer)
      : Boolean; overload;
    function Contains(const aValue: Currency; lArray: array of Currency)
      : Boolean; overload;
    function Contains(const aValue: double; lArray: array of double)
      : Boolean; overload;
  end;

implementation

end.
