.class final Lnet/sf/smc/parser/SmcLexer;
.super Ljava/lang/Object;
.source "SmcLexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/smc/parser/SmcLexer$Token;
    }
.end annotation


# static fields
.field static final ACCESS:I = 0x1c

.field private static final BUFFER_OFFSET:I = 0x2

.field static final CLASS_NAME:I = 0xa

.field static final COLON:I = 0x16

.field static final COMMA:I = 0x15

.field static final COOKED:I = 0x1

.field static final DECLARE:I = 0xf

.field static final DOLLAR:I = 0x1d

.field static final DONE_FAILED:I = 0x1

.field static final DONE_SUCCESS:I = 0x2

.field static final ENTRY:I = 0x3

.field static final EOD:I = 0x19

.field static final EQUAL:I = 0x1b

.field private static final ESCAPE:C = '\\'

.field static final EXIT:I = 0x4

.field static final FSM_CLASS_NAME:I = 0x1f

.field static final HEADER_FILE:I = 0xb

.field static final IMPORT:I = 0xe

.field static final INCLUDE_FILE:I = 0xc

.field static final JUMP:I = 0x1e

.field private static final KEYWORD_COUNT:I = 0x4

.field static final LEFT_BRACE:I = 0x10

.field static final LEFT_BRACKET:I = 0x12

.field static final LEFT_PAREN:I = 0x13

.field static final MAP_NAME:I = 0x9

.field private static final MAX_ASCII_CHAR:I = 0x80

.field private static final MAX_BUFFER_LEN:I = 0x1000

.field private static final MIN_ASCII_CHAR:I = 0x0

.field private static final NEW_LINE:I = 0xa

.field static final PACKAGE_NAME:I = 0xd

.field private static final PERCENT_KEYWORD_COUNT:I = 0x9

.field static final POP:I = 0x5

.field static final PUSH:I = 0x6

.field static final RAW:I = 0x2

.field static final RAW2:I = 0x3

.field static final RAW3:I = 0x4

.field private static final READ_BUFFER_LEN:I = 0x1002

.field static final RIGHT_BRACE:I = 0x11

.field static final RIGHT_PAREN:I = 0x14

.field static final SEMICOLON:I = 0x17

.field static final SLASH:I = 0x1a

.field static final SOURCE:I = 0x18

.field static final START_STATE:I = 0x8

.field static final TOKEN_COUNT:I = 0x20

.field static final TOKEN_NOT_SET:I = 0x0

.field static final WORD:I = 0x7

.field private static _KeywordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static _PercentKeywordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static _TransMethod:[Ljava/lang/reflect/Method;

.field private static _TypeName:[Ljava/lang/String;


# instance fields
.field private _bufferSize:I

.field private _closeChar:C

.field private _closeChars:Ljava/lang/String;

.field private _closeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private _currentChar:C

.field private _endChar:C

.field private _lexerFSM:Lnet/sf/smc/parser/SmcLexerContext;

.field private _lineNumber:I

.field private _mode:I

.field private _openChar:C

.field private _openList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private _quoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private _readBuffer:[C

.field private _readIndex:I

.field private _separator:C

.field private _stopFlag:Z

.field private _stream:Ljava/io/InputStream;

.field private _token:Lnet/sf/smc/parser/SmcLexer$Token;

.field private _tokenBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 920
    const-string v7, "<not set>"

    .line 922
    .local v7, "transName":Ljava/lang/String;
    const/16 v10, 0x20

    new-array v10, v10, [Ljava/lang/String;

    sput-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    .line 923
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "TOKEN_NOT_SET"

    aput-object v12, v10, v11

    .line 924
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/4 v11, 0x1

    const-string v12, "DONE_FAILED"

    aput-object v12, v10, v11

    .line 925
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/4 v11, 0x2

    const-string v12, "DONE_SUCCESS"

    aput-object v12, v10, v11

    .line 926
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/4 v11, 0x3

    const-string v12, "ENTRY"

    aput-object v12, v10, v11

    .line 927
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/4 v11, 0x4

    const-string v12, "EXIT"

    aput-object v12, v10, v11

    .line 928
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/4 v11, 0x5

    const-string v12, "POP"

    aput-object v12, v10, v11

    .line 929
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/4 v11, 0x6

    const-string v12, "PUSH"

    aput-object v12, v10, v11

    .line 930
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/4 v11, 0x7

    const-string v12, "WORD"

    aput-object v12, v10, v11

    .line 931
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x8

    const-string v12, "START_STATE"

    aput-object v12, v10, v11

    .line 932
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x9

    const-string v12, "MAP_NAME"

    aput-object v12, v10, v11

    .line 933
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0xa

    const-string v12, "CLASS_NAME"

    aput-object v12, v10, v11

    .line 934
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0xb

    const-string v12, "HEADER_FILE"

    aput-object v12, v10, v11

    .line 935
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0xc

    const-string v12, "INCLUDE_FILE"

    aput-object v12, v10, v11

    .line 936
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0xd

    const-string v12, "PACKAGE_NAME"

    aput-object v12, v10, v11

    .line 937
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x1f

    const-string v12, "FSM_CLASS_NAME"

    aput-object v12, v10, v11

    .line 938
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0xe

    const-string v12, "IMPORT"

    aput-object v12, v10, v11

    .line 939
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0xf

    const-string v12, "DECLARE"

    aput-object v12, v10, v11

    .line 940
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x10

    const-string v12, "LEFT_BRACE"

    aput-object v12, v10, v11

    .line 941
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x11

    const-string v12, "RIGHT_BRACE"

    aput-object v12, v10, v11

    .line 942
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x12

    const-string v12, "LEFT_BRACKET"

    aput-object v12, v10, v11

    .line 945
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x13

    const-string v12, "LEFT_PAREN"

    aput-object v12, v10, v11

    .line 946
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x14

    const-string v12, "RIGHT_PAREN"

    aput-object v12, v10, v11

    .line 947
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x15

    const-string v12, "COMMA"

    aput-object v12, v10, v11

    .line 948
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x16

    const-string v12, "COLON"

    aput-object v12, v10, v11

    .line 949
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x16

    const-string v12, "SEMICOLON"

    aput-object v12, v10, v11

    .line 950
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x18

    const-string v12, "SOURCE"

    aput-object v12, v10, v11

    .line 951
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x19

    const-string v12, "EOD"

    aput-object v12, v10, v11

    .line 952
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x1a

    const-string v12, "SLASH"

    aput-object v12, v10, v11

    .line 953
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x1b

    const-string v12, "EQUAL"

    aput-object v12, v10, v11

    .line 954
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x1c

    const-string v12, "ACCESS"

    aput-object v12, v10, v11

    .line 955
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x1d

    const-string v12, "DOLLAR"

    aput-object v12, v10, v11

    .line 956
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    const/16 v11, 0x1e

    const-string v12, "JUMP"

    aput-object v12, v10, v11

    .line 959
    new-instance v10, Ljava/util/HashMap;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    sput-object v10, Lnet/sf/smc/parser/SmcLexer;->_KeywordMap:Ljava/util/Map;

    .line 961
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_KeywordMap:Ljava/util/Map;

    const-string v11, "Entry"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_KeywordMap:Ljava/util/Map;

    const-string v11, "Exit"

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_KeywordMap:Ljava/util/Map;

    const-string v11, "jump"

    const/16 v12, 0x1e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_KeywordMap:Ljava/util/Map;

    const-string v11, "pop"

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_KeywordMap:Ljava/util/Map;

    const-string v11, "push"

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    new-instance v10, Ljava/util/HashMap;

    const/16 v11, 0x9

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    sput-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    .line 970
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%start"

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%map"

    const/16 v12, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%class"

    const/16 v12, 0xa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%header"

    const/16 v12, 0xb

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%include"

    const/16 v12, 0xc

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%package"

    const/16 v12, 0xd

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%fsmclass"

    const/16 v12, 0x1f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%import"

    const/16 v12, 0xe

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%declare"

    const/16 v12, 0xf

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    const-string v11, "%access"

    const/16 v12, 0x1c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const/16 v10, 0x80

    new-array v10, v10, [Ljava/lang/reflect/Method;

    sput-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    .line 990
    :try_start_0
    const-class v4, Lnet/sf/smc/parser/SmcLexerContext;

    .line 992
    .local v4, "fsmClass":Ljava/lang/Class;, "Ljava/lang/Class<Lnet/sf/smc/parser/SmcLexerContext;>;"
    const/4 v10, 0x0

    new-array v6, v10, [Ljava/lang/Class;

    .line 998
    .local v6, "paramTypes":[Ljava/lang/Class;
    const-string v7, "unicode"

    .line 999
    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1003
    .local v8, "unicode":Ljava/lang/reflect/Method;
    const-string v7, "whitespace"

    .line 1004
    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1008
    .local v9, "whitespace":Ljava/lang/reflect/Method;
    const-string v7, "alpha"

    .line 1009
    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1013
    .local v0, "alpha":Ljava/lang/reflect/Method;
    const-string v7, "digit"

    .line 1014
    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1020
    .local v1, "digit":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v10, 0x80

    if-ge v5, v10, :cond_0

    .line 1022
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    aput-object v8, v10, v5

    .line 1020
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x9

    aput-object v9, v10, v11

    .line 1027
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0xb

    aput-object v9, v10, v11

    .line 1028
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0xc

    aput-object v9, v10, v11

    .line 1029
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x1c

    aput-object v9, v10, v11

    .line 1030
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x1d

    aput-object v9, v10, v11

    .line 1031
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x1e

    aput-object v9, v10, v11

    .line 1032
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x1f

    aput-object v9, v10, v11

    .line 1033
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x20

    aput-object v9, v10, v11

    .line 1036
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0xa

    const-string v12, "EOL"

    invoke-virtual {v4, v12, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1038
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0xd

    sget-object v12, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v13, 0xa

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    .line 1041
    const/16 v5, 0x61

    :goto_1
    const/16 v10, 0x7a

    if-gt v5, v10, :cond_1

    .line 1043
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    aput-object v0, v10, v5

    .line 1041
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1046
    :cond_1
    const/16 v5, 0x41

    :goto_2
    const/16 v10, 0x5a

    if-gt v5, v10, :cond_2

    .line 1048
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    aput-object v0, v10, v5

    .line 1046
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1052
    :cond_2
    const/16 v5, 0x30

    :goto_3
    const/16 v10, 0x39

    if-gt v5, v10, :cond_3

    .line 1054
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    aput-object v1, v10, v5

    .line 1052
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1058
    :cond_3
    const-string v7, "percent"

    .line 1059
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x25

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1062
    const-string v7, "left_paren"

    .line 1063
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x28

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1066
    const-string v7, "right_paren"

    .line 1067
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x29

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1070
    const-string v7, "asterisk"

    .line 1071
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x2a

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1074
    const-string v7, "comma"

    .line 1075
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x2c

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1078
    const-string v7, "period"

    .line 1079
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x2e

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1082
    const-string v7, "slash"

    .line 1083
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x2f

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1086
    const-string v7, "colon"

    .line 1087
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x3a

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1090
    const-string v7, "semicolon"

    .line 1091
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x3b

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1094
    const-string v7, "left_bracket"

    .line 1095
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x5b

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1100
    const-string v7, "underscore"

    .line 1101
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x5f

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1104
    const-string v7, "left_brace"

    .line 1105
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x7b

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1108
    const-string v7, "right_brace"

    .line 1109
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x7d

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1113
    const-string v7, "equal"

    .line 1114
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x3d

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1118
    const-string v7, "lt"

    .line 1119
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x3c

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1123
    const-string v7, "gt"

    .line 1124
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x3e

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1128
    const-string v7, "dollar"

    .line 1129
    sget-object v10, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v11, 0x24

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v10, v11
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1151
    .end local v0    # "alpha":Ljava/lang/reflect/Method;
    .end local v1    # "digit":Ljava/lang/reflect/Method;
    .end local v4    # "fsmClass":Ljava/lang/Class;, "Ljava/lang/Class<Lnet/sf/smc/parser/SmcLexerContext;>;"
    .end local v5    # "i":I
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    .end local v8    # "unicode":Ljava/lang/reflect/Method;
    .end local v9    # "whitespace":Ljava/lang/reflect/Method;
    :goto_4
    return-void

    .line 1133
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "ex1":Ljava/lang/NoSuchMethodException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INITIALIZATION ERROR! No such method as SmcLexerContext."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1140
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    .line 1142
    .end local v2    # "ex1":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 1144
    .local v3, "ex2":Ljava/lang/SecurityException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INITIALIZATION ERROR! Not allowed to access SmcLexerContext."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1149
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_4
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "debugFlag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lnet/sf/smc/parser/SmcLexer;->_stream:Ljava/io/InputStream;

    .line 62
    new-instance v0, Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-direct {v0, p0}, Lnet/sf/smc/parser/SmcLexer$Token;-><init>(Lnet/sf/smc/parser/SmcLexer;)V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    .line 65
    const/16 v0, 0x1002

    new-array v0, v0, [C

    iput-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    .line 66
    iput v1, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    .line 67
    iput v1, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    .line 69
    new-instance v0, Lnet/sf/smc/parser/SmcLexerContext;

    invoke-direct {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext;-><init>(Lnet/sf/smc/parser/SmcLexer;)V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_lexerFSM:Lnet/sf/smc/parser/SmcLexerContext;

    .line 70
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_lexerFSM:Lnet/sf/smc/parser/SmcLexerContext;

    invoke-virtual {v0, p2}, Lstatemap/FSMContext;->setDebugFlag(Z)V

    .line 71
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;

    return-object v0
.end method

.method private nextParamTypeToken()Lnet/sf/smc/parser/SmcLexer$Token;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    iget v9, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    .line 507
    .local v9, "startLine":I
    const/16 v10, 0x18

    .line 510
    .local v10, "tokenType":I
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 516
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 521
    .local v1, "depth":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Character;>;"
    const/4 v7, 0x0

    .line 522
    .local v7, "quoteFlag":Z
    const/16 v6, 0x20

    .line 523
    .local v6, "quoteChar":C
    const/4 v3, 0x0

    .line 525
    .local v3, "escapeFlag":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 526
    :cond_0
    :goto_0
    iget-boolean v11, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    if-nez v11, :cond_2

    .line 528
    invoke-direct {p0}, Lnet/sf/smc/parser/SmcLexer;->readChar()C

    move-result v11

    iput-char v11, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    .line 533
    iget-char v11, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    iget-char v12, p0, Lnet/sf/smc/parser/SmcLexer;->_endChar:C

    if-eq v11, v12, :cond_1

    iget-char v11, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    iget-char v12, p0, Lnet/sf/smc/parser/SmcLexer;->_separator:C

    if-ne v11, v12, :cond_3

    :cond_1
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    if-nez v7, :cond_3

    .line 538
    const/4 v11, 0x1

    iput-boolean v11, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 543
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexer;->ungetChar()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    .end local v1    # "depth":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Character;>;"
    .end local v3    # "escapeFlag":Z
    .end local v6    # "quoteChar":C
    .end local v7    # "quoteFlag":Z
    :catch_0
    move-exception v2

    .line 659
    .local v2, "e":Ljava/io/EOFException;
    const/4 v10, 0x1

    .line 661
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    iget-object v13, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 662
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, "User source code contains "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, "an unbalanced open, closing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, " pair."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .end local v2    # "e":Ljava/io/EOFException;
    :cond_2
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v11, v10}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 668
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    iget-object v12, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 669
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v11, v9}, Lnet/sf/smc/parser/SmcLexer$Token;->setLineNumber(I)V

    .line 671
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    return-object v11

    .line 547
    .restart local v1    # "depth":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Character;>;"
    .restart local v3    # "escapeFlag":Z
    .restart local v6    # "quoteChar":C
    .restart local v7    # "quoteFlag":Z
    :cond_3
    :try_start_1
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    iget-char v12, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4

    .line 553
    const/4 v3, 0x0

    goto :goto_0

    .line 556
    :cond_4
    iget-char v11, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_5

    .line 559
    const/4 v3, 0x1

    goto :goto_0

    .line 562
    :cond_5
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_quoteList:Ljava/util/List;

    iget-char v12, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .local v8, "quoteIndex":I
    if-ltz v8, :cond_7

    .line 567
    if-nez v7, :cond_6

    .line 571
    const/4 v7, 0x1

    .line 572
    iget-char v6, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    goto/16 :goto_0

    .line 576
    :cond_6
    iget-char v11, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    if-ne v11, v6, :cond_0

    .line 580
    const/4 v7, 0x0

    .line 581
    const/16 v6, 0x20

    goto/16 :goto_0

    .line 587
    :cond_7
    const/4 v11, 0x1

    if-eq v7, v11, :cond_0

    .line 592
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_closeList:Ljava/util/List;

    iget-char v12, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "closeIndex":I
    if-ltz v0, :cond_9

    .line 598
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 602
    const/4 v10, 0x1

    .line 606
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    iget-object v13, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 608
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    iget-char v12, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, "\' has no matching \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    iget-object v12, p0, Lnet/sf/smc/parser/SmcLexer;->_openList:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, "\'."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 619
    :cond_8
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    .line 620
    .local v4, "openChar":Ljava/lang/Character;
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_openList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 622
    .local v5, "openIndex":I
    if-eq v0, v5, :cond_0

    .line 626
    const/4 v10, 0x1

    .line 628
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    iget-object v13, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 630
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    iget-char v12, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, "\' does not match \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const-string v12, "\'."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 642
    .end local v4    # "openChar":Ljava/lang/Character;
    .end local v5    # "openIndex":I
    :cond_9
    iget-object v11, p0, Lnet/sf/smc/parser/SmcLexer;->_openList:Ljava/util/List;

    iget-char v12, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 645
    iget-char v11, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 647
    :cond_a
    iget-char v11, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    const/16 v12, 0xa

    if-ne v11, v12, :cond_0

    .line 649
    iget v11, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private nextRaw3Token()Lnet/sf/smc/parser/SmcLexer$Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x18

    .line 452
    iget v1, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    .line 455
    .local v1, "startLine":I
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 461
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 462
    :goto_0
    iget-boolean v2, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    if-nez v2, :cond_2

    .line 464
    invoke-direct {p0}, Lnet/sf/smc/parser/SmcLexer;->readChar()C

    move-result v2

    iput-char v2, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    .line 469
    iget-char v2, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 471
    iget v2, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    .line 476
    :cond_0
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_closeChars:Ljava/lang/String;

    iget-char v3, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 478
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/io/EOFException;
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v2, v4}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 495
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    iget-object v3, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 496
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v2, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setLineNumber(I)V

    .line 499
    .end local v0    # "e":Ljava/io/EOFException;
    :goto_1
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    return-object v2

    .line 482
    :cond_1
    :try_start_1
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    iget-char v3, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 486
    :cond_2
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 487
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    iget-object v3, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v2, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setLineNumber(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private nextRawToken()Lnet/sf/smc/parser/SmcLexer$Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 360
    iget v3, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    .line 363
    .local v3, "startLine":I
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexer;->startToken()V

    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "depth":I
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 372
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    if-nez v4, :cond_4

    .line 374
    invoke-direct {p0}, Lnet/sf/smc/parser/SmcLexer;->readChar()C

    move-result v4

    iput-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    .line 387
    iget-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    iget-char v5, p0, Lnet/sf/smc/parser/SmcLexer;->_closeChar:C

    if-ne v4, v5, :cond_1

    if-nez v0, :cond_1

    .line 389
    const/4 v4, 0x1

    iput-boolean v4, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/EOFException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v2, "msg":Ljava/lang/StringBuilder;
    const-string v4, "User source code contains an unbalanced "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_openChar:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_closeChar:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    const-string v4, " pair."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v4, v6}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 441
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 444
    .end local v1    # "e":Ljava/io/EOFException;
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    :goto_1
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    return-object v4

    .line 393
    :cond_1
    :try_start_1
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    iget-char v5, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    iget v4, p0, Lnet/sf/smc/parser/SmcLexer;->_mode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 399
    iget-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    iget-char v5, p0, Lnet/sf/smc/parser/SmcLexer;->_closeChar:C

    if-ne v4, v5, :cond_2

    .line 401
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 407
    :cond_2
    iget-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    iget-char v5, p0, Lnet/sf/smc/parser/SmcLexer;->_openChar:C

    if-ne v4, v5, :cond_3

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_3
    iget-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 416
    iget v4, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    goto :goto_0

    .line 422
    :cond_4
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 423
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v4, v3}, Lnet/sf/smc/parser/SmcLexer$Token;->setLineNumber(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private readChar()C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 690
    iget v5, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    iget v6, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    if-ne v5, v6, :cond_5

    .line 694
    const/4 v2, 0x0

    .line 695
    .local v2, "offset":I
    const/4 v0, 0x0

    .line 699
    .local v0, "c":I
    iget v5, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 701
    const/4 v2, 0x2

    .line 703
    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    iget-object v6, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    iget v7, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    add-int/lit8 v7, v7, -0x2

    aget-char v6, v6, v7

    aput-char v6, v5, v8

    .line 704
    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    iget-object v6, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    iget v7, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    add-int/lit8 v7, v7, -0x1

    aget-char v6, v6, v7

    aput-char v6, v5, v9

    .line 713
    :cond_0
    :goto_0
    move v1, v2

    .local v1, "index":I
    const/4 v4, 0x0

    .line 714
    .local v4, "size":I
    :goto_1
    const/16 v5, 0x1000

    if-ge v4, v5, :cond_1

    .line 717
    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_stream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 718
    if-gez v0, :cond_3

    .line 729
    :cond_1
    if-nez v4, :cond_4

    if-gez v0, :cond_4

    .line 731
    iput v8, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    .line 732
    new-instance v5, Ljava/io/EOFException;

    const-string v6, "end-of-file reached"

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 706
    .end local v1    # "index":I
    .end local v4    # "size":I
    :cond_2
    iget v5, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    if-le v5, v9, :cond_0

    .line 708
    const/4 v2, 0x1

    .line 710
    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    iget-object v6, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    iget v7, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    add-int/lit8 v7, v7, -0x1

    aget-char v6, v6, v7

    aput-char v6, v5, v8

    goto :goto_0

    .line 724
    .restart local v1    # "index":I
    .restart local v4    # "size":I
    :cond_3
    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    int-to-char v6, v0

    aput-char v6, v5, v1

    .line 715
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 738
    :cond_4
    add-int v5, v4, v2

    iput v5, p0, Lnet/sf/smc/parser/SmcLexer;->_bufferSize:I

    .line 739
    iput v2, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    .line 743
    .end local v0    # "c":I
    .end local v1    # "index":I
    .end local v2    # "offset":I
    .end local v4    # "size":I
    :cond_5
    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_readBuffer:[C

    iget v6, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    aget-char v3, v5, v6

    .line 744
    .local v3, "retval":C
    iget v5, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    .line 746
    return v3
.end method


# virtual methods
.method addToToken()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    iget-char v1, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    return-void
.end method

.method addToToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    return-void
.end method

.method badToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "error_msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 225
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v0, v3}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 226
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 230
    iput-boolean v3, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 231
    return-void
.end method

.method checkKeyword()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 238
    iget-object v1, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "tokenStr":Ljava/lang/String;
    iget-object v1, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v1, v0}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 241
    iput-boolean v2, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 243
    sget-object v1, Lnet/sf/smc/parser/SmcLexer;->_KeywordMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 245
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    sget-object v1, Lnet/sf/smc/parser/SmcLexer;->_KeywordMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 256
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 249
    iget-object v1, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    goto :goto_0

    .line 253
    :cond_1
    const-string v1, "Zero-length word"

    invoke-virtual {p0, v1}, Lnet/sf/smc/parser/SmcLexer;->badToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method checkPercentKeyword()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    iget-object v1, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "tokenStr":Ljava/lang/String;
    iget-object v1, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v1, v0}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 264
    iput-boolean v2, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 266
    sget-object v1, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 268
    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    sget-object v1, Lnet/sf/smc/parser/SmcLexer;->_PercentKeywordMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string v1, "Unknown % directive"

    invoke-virtual {p0, v1}, Lnet/sf/smc/parser/SmcLexer;->badToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method endToken(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    invoke-virtual {v0, p1}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 217
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    iget-object v1, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 219
    return-void
.end method

.method getLineNumber()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    return v0
.end method

.method nextCookedToken()Lnet/sf/smc/parser/SmcLexer$Token;
    .locals 6

    .prologue
    .line 302
    const/4 v4, 0x0

    :try_start_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 304
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    .line 305
    :goto_0
    iget-boolean v4, p0, Lnet/sf/smc/parser/SmcLexer;->_stopFlag:Z

    if-nez v4, :cond_0

    .line 307
    invoke-direct {p0}, Lnet/sf/smc/parser/SmcLexer;->readChar()C

    move-result v4

    iput-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    .line 313
    iget-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    sget-object v5, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 315
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_lexerFSM:Lnet/sf/smc/parser/SmcLexerContext;

    invoke-virtual {v4}, Lnet/sf/smc/parser/SmcLexerContext;->unicode()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 333
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/io/EOFException;
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 338
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 352
    .end local v1    # "e":Ljava/io/EOFException;
    :cond_0
    :goto_1
    iget-object v4, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    return-object v4

    .line 322
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget-char v4, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 324
    iget v4, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    .line 328
    :cond_2
    sget-object v4, Lnet/sf/smc/parser/SmcLexer;->_TransMethod:[Ljava/lang/reflect/Method;

    iget-char v5, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    aget-object v4, v4, v5

    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_lexerFSM:Lnet/sf/smc/parser/SmcLexerContext;

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 340
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 342
    .local v2, "invokex":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "Unknown token"

    invoke-virtual {p0, v4}, Lnet/sf/smc/parser/SmcLexer;->badToken(Ljava/lang/String;)V

    goto :goto_1

    .line 344
    .end local v2    # "invokex":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 346
    .local v3, "jex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/smc/parser/SmcLexer;->badToken(Ljava/lang/String;)V

    goto :goto_1
.end method

.method nextToken()Lnet/sf/smc/parser/SmcLexer$Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 95
    iget v1, p0, Lnet/sf/smc/parser/SmcLexer;->_mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 97
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexer;->nextCookedToken()Lnet/sf/smc/parser/SmcLexer$Token;

    move-result-object v0

    .line 113
    .local v0, "retval":Lnet/sf/smc/parser/SmcLexer$Token;
    :goto_0
    return-object v0

    .line 99
    .end local v0    # "retval":Lnet/sf/smc/parser/SmcLexer$Token;
    :cond_0
    iget v1, p0, Lnet/sf/smc/parser/SmcLexer;->_mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 101
    invoke-direct {p0}, Lnet/sf/smc/parser/SmcLexer;->nextRawToken()Lnet/sf/smc/parser/SmcLexer$Token;

    move-result-object v0

    .restart local v0    # "retval":Lnet/sf/smc/parser/SmcLexer$Token;
    goto :goto_0

    .line 103
    .end local v0    # "retval":Lnet/sf/smc/parser/SmcLexer$Token;
    :cond_1
    iget v1, p0, Lnet/sf/smc/parser/SmcLexer;->_mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 105
    invoke-direct {p0}, Lnet/sf/smc/parser/SmcLexer;->nextParamTypeToken()Lnet/sf/smc/parser/SmcLexer$Token;

    move-result-object v0

    .restart local v0    # "retval":Lnet/sf/smc/parser/SmcLexer$Token;
    goto :goto_0

    .line 110
    .end local v0    # "retval":Lnet/sf/smc/parser/SmcLexer$Token;
    :cond_2
    invoke-direct {p0}, Lnet/sf/smc/parser/SmcLexer;->nextRaw3Token()Lnet/sf/smc/parser/SmcLexer$Token;

    move-result-object v0

    .restart local v0    # "retval":Lnet/sf/smc/parser/SmcLexer$Token;
    goto :goto_0
.end method

.method outputChar()V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 201
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Unknown character: 0x"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 202
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-char v1, p0, Lnet/sf/smc/parser/SmcLexer;->_currentChar:C

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method setCookedMode()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer;->_mode:I

    .line 168
    return-void
.end method

.method setRawMode(CC)V
    .locals 1
    .param p1, "openChar"    # C
    .param p2, "closeChar"    # C

    .prologue
    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer;->_mode:I

    .line 130
    iput-char p1, p0, Lnet/sf/smc/parser/SmcLexer;->_openChar:C

    .line 131
    iput-char p2, p0, Lnet/sf/smc/parser/SmcLexer;->_closeChar:C

    .line 133
    return-void
.end method

.method setRawMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "closeChars"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x4

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer;->_mode:I

    .line 159
    iput-object p1, p0, Lnet/sf/smc/parser/SmcLexer;->_closeChars:Ljava/lang/String;

    .line 161
    return-void
.end method

.method setRawMode(Ljava/util/List;Ljava/util/List;Ljava/util/List;CC)V
    .locals 1
    .param p4, "endChar"    # C
    .param p5, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;CC)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "openList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    .local p2, "closeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    .local p3, "quoteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    const/4 v0, 0x3

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer;->_mode:I

    .line 145
    iput-object p1, p0, Lnet/sf/smc/parser/SmcLexer;->_openList:Ljava/util/List;

    .line 146
    iput-object p2, p0, Lnet/sf/smc/parser/SmcLexer;->_closeList:Ljava/util/List;

    .line 147
    iput-object p3, p0, Lnet/sf/smc/parser/SmcLexer;->_quoteList:Ljava/util/List;

    .line 148
    iput-char p4, p0, Lnet/sf/smc/parser/SmcLexer;->_endChar:C

    .line 149
    iput-char p5, p0, Lnet/sf/smc/parser/SmcLexer;->_separator:C

    .line 151
    return-void
.end method

.method startToken()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    # invokes: Lnet/sf/smc/parser/SmcLexer$Token;->reset()V
    invoke-static {v0}, Lnet/sf/smc/parser/SmcLexer$Token;->access$000(Lnet/sf/smc/parser/SmcLexer$Token;)V

    .line 182
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer;->_tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 186
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer;->_token:Lnet/sf/smc/parser/SmcLexer$Token;

    iget v1, p0, Lnet/sf/smc/parser/SmcLexer;->_lineNumber:I

    invoke-virtual {v0, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setLineNumber(I)V

    .line 188
    return-void
.end method

.method ungetChar()V
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    if-lez v0, :cond_0

    .line 286
    iget v0, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer;->_readIndex:I

    .line 289
    :cond_0
    return-void
.end method
