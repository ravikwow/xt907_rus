.class public final Lnet/sf/smc/parser/SmcParser;
.super Ljava/lang/Object;
.source "SmcParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/smc/parser/SmcParser$1;,
        Lnet/sf/smc/parser/SmcParser$TargetLanguage;
    }
.end annotation


# static fields
.field private static CLOSE_CLAUSE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final LANGUAGE_COUNT:I = 0x12

.field private static OPEN_CLAUSE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static QUOTE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static _TransMethod:[Ljava/lang/reflect/Method;


# instance fields
.field private _actionInProgress:Lnet/sf/smc/model/SmcAction;

.field private _actionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;"
        }
    .end annotation
.end field

.field private _argInProgress:Ljava/lang/String;

.field private _argList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _fsm:Lnet/sf/smc/model/SmcFSM;

.field private _guardInProgress:Lnet/sf/smc/model/SmcGuard;

.field private _lexer:Lnet/sf/smc/parser/SmcLexer;

.field private _lineNumber:I

.field private _mapInProgress:Lnet/sf/smc/model/SmcMap;

.field private _messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/parser/SmcMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final _name:Ljava/lang/String;

.field private _paramInProgress:Lnet/sf/smc/model/SmcParameter;

.field private _paramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;"
        }
    .end annotation
.end field

.field private _parseStatus:Z

.field private _parserFSM:Lnet/sf/smc/parser/SmcParserContext;

.field private _quitFlag:Z

.field private _stateInProgress:Lnet/sf/smc/model/SmcState;

.field private final _targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

.field private _transitionInProgress:Lnet/sf/smc/model/SmcTransition;

.field private _transitionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 1507
    const-string v4, "<not set>"

    .line 1509
    .local v4, "transName":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lnet/sf/smc/parser/SmcParser;->OPEN_CLAUSE_LIST:Ljava/util/List;

    .line 1510
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lnet/sf/smc/parser/SmcParser;->CLOSE_CLAUSE_LIST:Ljava/util/List;

    .line 1511
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lnet/sf/smc/parser/SmcParser;->QUOTE_LIST:Ljava/util/List;

    .line 1513
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->OPEN_CLAUSE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x28

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->OPEN_CLAUSE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x7b

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->OPEN_CLAUSE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x5b

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->OPEN_CLAUSE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x3c

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->CLOSE_CLAUSE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x29

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->CLOSE_CLAUSE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x7d

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->CLOSE_CLAUSE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x5d

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->CLOSE_CLAUSE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x3e

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->QUOTE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x22

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->QUOTE_LIST:Ljava/util/List;

    new-instance v6, Ljava/lang/Character;

    const/16 v7, 0x27

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    const/16 v5, 0x20

    new-array v5, v5, [Ljava/lang/reflect/Method;

    sput-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    .line 1530
    :try_start_0
    const-class v2, Lnet/sf/smc/parser/SmcParserContext;

    .line 1532
    .local v2, "fsmClass":Ljava/lang/Class;, "Ljava/lang/Class<Lnet/sf/smc/parser/SmcParserContext;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Class;

    .line 1534
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Lnet/sf/smc/parser/SmcLexer$Token;

    aput-object v6, v3, v5

    .line 1536
    const-string v4, "ENTRY"

    .line 1537
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    const-string v7, "ENTRY"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1540
    const-string v4, "EXIT"

    .line 1541
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/4 v6, 0x4

    const-string v7, "EXIT"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1544
    const-string v4, "JUMP"

    .line 1545
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x1e

    const-string v7, "JUMP"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1548
    const-string v4, "POP"

    .line 1549
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/4 v6, 0x5

    const-string v7, "POP"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1552
    const-string v4, "PUSH"

    .line 1553
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/4 v6, 0x6

    const-string v7, "PUSH"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1556
    const-string v4, "WORD"

    .line 1557
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/4 v6, 0x7

    const-string v7, "WORD"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1560
    const-string v4, "START_STATE"

    .line 1561
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x8

    const-string v7, "START_STATE"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1564
    const-string v4, "MAP_NAME"

    .line 1565
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x9

    const-string v7, "MAP_NAME"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1568
    const-string v4, "CLASS_NAME"

    .line 1569
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0xa

    const-string v7, "CLASS_NAME"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1572
    const-string v4, "HEADER_FILE"

    .line 1573
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0xb

    const-string v7, "HEADER_FILE"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1576
    const-string v4, "INCLUDE_FILE"

    .line 1577
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0xc

    const-string v7, "INCLUDE_FILE"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1580
    const-string v4, "PACKAGE_NAME"

    .line 1581
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0xd

    const-string v7, "PACKAGE_NAME"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1584
    const-string v4, "FSM_CLASS_NAME"

    .line 1585
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x1f

    const-string v7, "FSM_CLASS_NAME"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1588
    const-string v4, "IMPORT"

    .line 1589
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0xe

    const-string v7, "IMPORT"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1592
    const-string v4, "DECLARE"

    .line 1593
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0xf

    const-string v7, "DECLARE"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1596
    const-string v4, "LEFT_BRACE"

    .line 1597
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x10

    const-string v7, "LEFT_BRACE"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1600
    const-string v4, "RIGHT_BRACE"

    .line 1601
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x11

    const-string v7, "RIGHT_BRACE"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1604
    const-string v4, "LEFT_BRACKET"

    .line 1605
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x12

    const-string v7, "LEFT_BRACKET"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1608
    const-string v4, "LEFT_PAREN"

    .line 1609
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x13

    const-string v7, "LEFT_PAREN"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1612
    const-string v4, "RIGHT_PAREN"

    .line 1613
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x14

    const-string v7, "RIGHT_PAREN"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1616
    const-string v4, "COMMA"

    .line 1617
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x15

    const-string v7, "COMMA"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1620
    const-string v4, "COLON"

    .line 1621
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x16

    const-string v7, "COLON"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1624
    const-string v4, "SEMICOLON"

    .line 1625
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x17

    const-string v7, "SEMICOLON"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1628
    const-string v4, "SOURCE"

    .line 1629
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x18

    const-string v7, "SOURCE"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1632
    const-string v4, "EOD"

    .line 1633
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x19

    const-string v7, "EOD"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1636
    const-string v4, "SLASH"

    .line 1637
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x1a

    const-string v7, "SLASH"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1640
    const-string v4, "EQUAL"

    .line 1641
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x1b

    const-string v7, "EQUAL"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1644
    const-string v4, "ACCESS"

    .line 1645
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x1c

    const-string v7, "ACCESS"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1648
    const-string v4, "DOLLAR"

    .line 1649
    sget-object v5, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    const/16 v6, 0x1d

    const-string v7, "DOLLAR"

    invoke-virtual {v2, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1670
    .end local v2    # "fsmClass":Ljava/lang/Class;, "Ljava/lang/Class<Lnet/sf/smc/parser/SmcParserContext;>;"
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    :goto_0
    return-void

    .line 1653
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "ex1":Ljava/lang/NoSuchMethodException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INITIALIZATION ERROR! No such method as SmcParserContext."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1659
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 1661
    .end local v0    # "ex1":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1663
    .local v1, "ex2":Ljava/lang/SecurityException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INITIALIZATION ERROR! Not allowed to access SmcParserContext."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1668
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lnet/sf/smc/parser/SmcParser$TargetLanguage;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "istream"    # Ljava/io/InputStream;
    .param p3, "targetLanguage"    # Lnet/sf/smc/parser/SmcParser$TargetLanguage;
    .param p4, "debugFlag"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lnet/sf/smc/parser/SmcParser;->_name:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lnet/sf/smc/parser/SmcParser;->_targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_messages:Ljava/util/List;

    .line 97
    new-instance v0, Lnet/sf/smc/parser/SmcLexer;

    invoke-direct {v0, p2, p4}, Lnet/sf/smc/parser/SmcLexer;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_lexer:Lnet/sf/smc/parser/SmcLexer;

    .line 98
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext;

    invoke-direct {v0, p0}, Lnet/sf/smc/parser/SmcParserContext;-><init>(Lnet/sf/smc/parser/SmcParser;)V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    .line 99
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v0, p4}, Lstatemap/FSMContext;->setDebugFlag(Z)V

    .line 100
    return-void
.end method


# virtual methods
.method addAction()V
    .locals 2

    .prologue
    .line 1144
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1146
    const-string v0, "There is no action list to which the action may be added."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1162
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    if-nez v0, :cond_1

    .line 1152
    const-string v0, "There is no in-progress action to add to the list."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 1158
    :cond_1
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    goto :goto_0
.end method

.method addArgument()V
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1269
    const-string v0, "There is no argument list to which the argument may be added."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1285
    :goto_0
    return-void

    .line 1273
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argInProgress:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1275
    const-string v0, "There is no in-progress argument to add to the list."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 1281
    :cond_1
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_argInProgress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argInProgress:Ljava/lang/String;

    goto :goto_0
.end method

.method addDeclare(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcFSM;->addDeclare(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method addGuard()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    if-nez v0, :cond_0

    .line 805
    const-string v0, "There is no in-progress transition to which the guard may be added."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 823
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    if-nez v0, :cond_1

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no in-progress guard to add to the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " transition."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcTransition;->addGuard(Lnet/sf/smc/model/SmcGuard;)V

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    goto :goto_0
.end method

.method addImport(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcFSM;->addImport(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method addInclude(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcFSM;->addInclude(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method addMap()V
    .locals 4

    .prologue
    .line 495
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    if-nez v1, :cond_0

    .line 497
    const-string v1, "There is no in-progress map to add"

    iget v2, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 519
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcMap;->hasDefaultState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    new-instance v0, Lnet/sf/smc/model/SmcState;

    const-string v1, "Default"

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    invoke-virtual {v2}, Lnet/sf/smc/model/SmcElement;->getLineNumber()I

    move-result v2

    iget-object v3, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/model/SmcState;-><init>(Ljava/lang/String;ILnet/sf/smc/model/SmcMap;)V

    .line 512
    .local v0, "DefaultState":Lnet/sf/smc/model/SmcState;
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    invoke-virtual {v1, v0}, Lnet/sf/smc/model/SmcMap;->addState(Lnet/sf/smc/model/SmcState;)V

    .line 515
    .end local v0    # "DefaultState":Lnet/sf/smc/model/SmcState;
    :cond_1
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    invoke-virtual {v1, v2}, Lnet/sf/smc/model/SmcFSM;->addMap(Lnet/sf/smc/model/SmcMap;)V

    .line 516
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    goto :goto_0
.end method

.method addParameter()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1048
    const-string v0, "There is no parameter list to which the parameter may be added."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1064
    :goto_0
    return-void

    .line 1052
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    if-nez v0, :cond_1

    .line 1054
    const-string v0, "There is no in-progress parameter to add to the list."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 1060
    :cond_1
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramList:Ljava/util/List;

    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    goto :goto_0
.end method

.method addState()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    if-nez v0, :cond_0

    .line 562
    const-string v0, "There is no in-progress map to which the state may be added."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 578
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    if-nez v0, :cond_1

    .line 568
    const-string v0, "There is no in-progrss state to add to the map."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcMap;->addState(Lnet/sf/smc/model/SmcState;)V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    goto :goto_0
.end method

.method addTransition()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    if-nez v0, :cond_0

    .line 665
    const-string v0, "There is no in-progress state to which the transition may be added."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 682
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    if-nez v0, :cond_1

    .line 671
    const-string v0, "There is no in-progress transition to add to the state."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcState;->addTransition(Lnet/sf/smc/model/SmcTransition;)V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    goto :goto_0
.end method

.method clearActions()V
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    .line 1209
    :cond_0
    return-void
.end method

.method clearArguments()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1293
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    .line 1296
    :cond_0
    return-void
.end method

.method clearParameter()V
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    .line 1070
    return-void
.end method

.method createAction(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    .line 1100
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    if-eqz v1, :cond_0

    .line 1102
    const-string v1, "Cannot create new action while still filling in previous one."

    invoke-virtual {p0, v1, p2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1123
    :goto_0
    return-void

    .line 1108
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1110
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1112
    .local v0, "os":Ljava/io/PrintStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ACTION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1119
    .end local v0    # "os":Ljava/io/PrintStream;
    :cond_1
    new-instance v1, Lnet/sf/smc/model/SmcAction;

    invoke-direct {v1, p1, p2}, Lnet/sf/smc/model/SmcAction;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    goto :goto_0
.end method

.method createActionList()V
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1077
    const-string v0, "Cannot create an action list when one already exists."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1086
    :goto_0
    return-void

    .line 1083
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    goto :goto_0
.end method

.method createArgList()V
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "Cannot create an argument list when one already exists."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1225
    :goto_0
    return-void

    .line 1222
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    goto :goto_0
.end method

.method createArgument(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    .line 1240
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_argInProgress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1242
    const-string v1, "Cannot create new argument while still filling in previous one."

    invoke-virtual {p0, v1, p2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1262
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1250
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1252
    .local v0, "os":Ljava/io/PrintStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   CREATE ARG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1259
    .end local v0    # "os":Ljava/io/PrintStream;
    :cond_1
    iput-object p1, p0, Lnet/sf/smc/parser/SmcParser;->_argInProgress:Ljava/lang/String;

    goto :goto_0
.end method

.method createGuard(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "transition"    # Ljava/lang/String;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I

    .prologue
    .line 832
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    if-eqz v1, :cond_0

    .line 834
    const-string v1, "Cannot create new guard while still filling in previous guard."

    invoke-virtual {p0, v1, p3}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 857
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 842
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 844
    .local v0, "os":Ljava/io/PrintStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE GUARD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 851
    .end local v0    # "os":Ljava/io/PrintStream;
    :cond_1
    new-instance v1, Lnet/sf/smc/model/SmcGuard;

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    invoke-direct {v1, p2, p3, v2}, Lnet/sf/smc/model/SmcGuard;-><init>(Ljava/lang/String;ILnet/sf/smc/model/SmcTransition;)V

    iput-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    goto :goto_0
.end method

.method createMap(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    .line 524
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    if-eqz v1, :cond_0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create new map while still filling in previous map ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    invoke-virtual {v2}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 555
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcFSM;->getFsmClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_1

    .line 538
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v3}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/smc/model/SmcFSM;->setFsmClassName(Ljava/lang/String;)V

    .line 540
    :cond_1
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 542
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 544
    .local v0, "os":Ljava/io/PrintStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE MAP   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    .end local v0    # "os":Ljava/io/PrintStream;
    :cond_2
    new-instance v1, Lnet/sf/smc/model/SmcMap;

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-direct {v1, p1, p2, v2}, Lnet/sf/smc/model/SmcMap;-><init>(Ljava/lang/String;ILnet/sf/smc/model/SmcFSM;)V

    iput-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    goto :goto_0
.end method

.method createParamList()V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramList:Ljava/util/List;

    .line 978
    :cond_0
    return-void
.end method

.method createParameter(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    .line 992
    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    if-eqz v2, :cond_0

    .line 994
    const-string v2, "Cannot create new parameter while still filling in previous one."

    invoke-virtual {p0, v2, p2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1025
    :goto_0
    return-void

    .line 1000
    :cond_0
    const-string v1, ""

    .line 1002
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v2}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1004
    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v2}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 1006
    .local v0, "os":Ljava/io/PrintStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE PARAM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    .end local v0    # "os":Ljava/io/PrintStream;
    :cond_1
    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    sget-object v3, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TCL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    if-ne v2, v3, :cond_2

    .line 1018
    const-string v1, "value"

    .line 1021
    :cond_2
    new-instance v2, Lnet/sf/smc/model/SmcParameter;

    invoke-direct {v2, p1, p2, v1}, Lnet/sf/smc/model/SmcParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    goto :goto_0
.end method

.method createState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    .line 585
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    if-eqz v1, :cond_0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create new state while still filling in previous state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v2}, Lnet/sf/smc/model/SmcState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 610
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 597
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v1}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 599
    .local v0, "os":Ljava/io/PrintStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE STATE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 606
    .end local v0    # "os":Ljava/io/PrintStream;
    :cond_1
    new-instance v1, Lnet/sf/smc/model/SmcState;

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    invoke-direct {v1, p1, p2, v2}, Lnet/sf/smc/model/SmcState;-><init>(Ljava/lang/String;ILnet/sf/smc/model/SmcMap;)V

    iput-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    goto :goto_0
.end method

.method createTransition(I)V
    .locals 1
    .param p1, "lineNumber"    # I

    .prologue
    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lnet/sf/smc/parser/SmcParser;->createTransition(Ljava/util/List;I)V

    .line 798
    return-void
.end method

.method createTransition(Ljava/util/List;I)V
    .locals 7
    .param p2, "lineNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    const/4 v6, 0x1

    .line 719
    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    if-eqz v4, :cond_0

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create new transition while still filling in previous transition ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    invoke-virtual {v5}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 789
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    if-nez v4, :cond_1

    .line 729
    const-string v4, "There is no in-progress state to which the transition may be added."

    invoke-virtual {p0, v4, p2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 735
    const-string v4, "There is no stored transition name."

    invoke-virtual {p0, v4, p2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 746
    :cond_2
    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    iget-object v5, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lnet/sf/smc/model/SmcState;->findTransition(Ljava/lang/String;Ljava/util/List;)Lnet/sf/smc/model/SmcTransition;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    .line 749
    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    if-nez v4, :cond_5

    .line 751
    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v4}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 753
    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v4}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 756
    .local v1, "os":Ljava/io/PrintStream;
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v4, 0x50

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 758
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "CREATE TRANS : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 762
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    const-string v3, ""

    .line 763
    .local v3, "sep":Ljava/lang/String;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 766
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 764
    const-string v3, ", "

    goto :goto_1

    .line 770
    :cond_3
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 771
    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 773
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 778
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "os":Ljava/io/PrintStream;
    .end local v2    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcParameter;>;"
    .end local v3    # "sep":Ljava/lang/String;
    :cond_4
    new-instance v4, Lnet/sf/smc/model/SmcTransition;

    iget-object v5, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    iget-object v6, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    invoke-direct {v4, v5, p1, p2, v6}, Lnet/sf/smc/model/SmcTransition;-><init>(Ljava/lang/String;Ljava/util/List;ILnet/sf/smc/model/SmcState;)V

    iput-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    .line 786
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method error(Ljava/lang/String;I)V
    .locals 4
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_messages:Ljava/util/List;

    new-instance v1, Lnet/sf/smc/parser/SmcMessage;

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_name:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p2, v3, p1}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/smc/parser/SmcParser;->_parseStatus:Z

    .line 293
    return-void
.end method

.method getActionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1091
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    .line 1093
    .local v0, "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    .line 1095
    return-object v0
.end method

.method getArgsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1230
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    .line 1232
    .local v0, "retval":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    .line 1234
    return-object v0
.end method

.method getLineNumber()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    return v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/parser/SmcMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_messages:Ljava/util/List;

    return-object v0
.end method

.method getParamList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramList:Ljava/util/List;

    .line 985
    .local v0, "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcParameter;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_paramList:Ljava/util/List;

    .line 987
    return-object v0
.end method

.method getProperty()Z
    .locals 3

    .prologue
    .line 1168
    const/4 v0, 0x0

    .line 1170
    .local v0, "retcode":Z
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    if-nez v1, :cond_0

    .line 1172
    const-string v1, "There is no in-progress action, get property flag failed."

    iget v2, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1181
    :goto_0
    return v0

    .line 1178
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcAction;->isProperty()Z

    move-result v0

    goto :goto_0
.end method

.method getTargetLanguage()Lnet/sf/smc/parser/SmcParser$TargetLanguage;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    return-object v0
.end method

.method getTransitionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    invoke-virtual {v0}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    goto :goto_0
.end method

.method isDuplicateMap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcFSM;->findMap(Ljava/lang/String;)Lnet/sf/smc/model/SmcMap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isDuplicateState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcMap;->isKnownState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isValidHeader()Z
    .locals 3

    .prologue
    .line 225
    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v2}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "context":Ljava/lang/String;
    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v2}, Lnet/sf/smc/model/SmcFSM;->getStartState()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "start":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isValidStartState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 240
    .local v1, "retval":Z
    const-string v2, "::"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "index":I
    if-ltz v0, :cond_0

    const-string v2, "::"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_0

    .line 248
    const/4 v1, 0x1

    .line 251
    :cond_0
    return v1
.end method

.method public parse()Lnet/sf/smc/model/SmcFSM;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    const/4 v1, 0x0

    .line 127
    .local v1, "token":Lnet/sf/smc/parser/SmcLexer$Token;
    new-array v0, v8, [Ljava/lang/Object;

    .line 129
    .local v0, "params":[Ljava/lang/Object;
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_mapInProgress:Lnet/sf/smc/model/SmcMap;

    .line 130
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    .line 131
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    .line 132
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_transitionInProgress:Lnet/sf/smc/model/SmcTransition;

    .line 133
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    .line 134
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    .line 135
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    .line 136
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_argInProgress:Ljava/lang/String;

    .line 138
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_paramList:Ljava/util/List;

    .line 139
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_actionList:Ljava/util/List;

    .line 140
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_argList:Ljava/util/List;

    .line 142
    iput-boolean v8, p0, Lnet/sf/smc/parser/SmcParser;->_parseStatus:Z

    .line 143
    iput-boolean v9, p0, Lnet/sf/smc/parser/SmcParser;->_quitFlag:Z

    .line 145
    new-instance v3, Lnet/sf/smc/model/SmcFSM;

    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_name:Ljava/lang/String;

    iget-object v5, p0, Lnet/sf/smc/parser/SmcParser;->_targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    iget-object v6, p0, Lnet/sf/smc/parser/SmcParser;->_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->targetFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/sf/smc/model/SmcFSM;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    .line 149
    iget-object v3, p0, Lnet/sf/smc/parser/SmcParser;->_lexer:Lnet/sf/smc/parser/SmcLexer;

    invoke-virtual {v3}, Lnet/sf/smc/parser/SmcLexer;->setCookedMode()V

    .line 152
    const/4 v2, 0x0

    .line 154
    .local v2, "tokenType":I
    :goto_0
    iget-boolean v3, p0, Lnet/sf/smc/parser/SmcParser;->_quitFlag:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lnet/sf/smc/parser/SmcParser;->_lexer:Lnet/sf/smc/parser/SmcLexer;

    invoke-virtual {v3}, Lnet/sf/smc/parser/SmcLexer;->nextToken()Lnet/sf/smc/parser/SmcLexer$Token;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {v1}, Lnet/sf/smc/parser/SmcLexer$Token;->getType()I

    move-result v2

    .line 157
    invoke-virtual {v1}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v3

    iput v3, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    .line 160
    if-gtz v2, :cond_0

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined token type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 169
    iput-boolean v8, p0, Lnet/sf/smc/parser/SmcParser;->_quitFlag:Z

    .line 170
    iput-boolean v9, p0, Lnet/sf/smc/parser/SmcParser;->_parseStatus:Z

    goto :goto_0

    .line 173
    :cond_0
    if-ne v2, v8, :cond_1

    .line 175
    iput-boolean v8, p0, Lnet/sf/smc/parser/SmcParser;->_quitFlag:Z

    .line 176
    iput-boolean v9, p0, Lnet/sf/smc/parser/SmcParser;->_parseStatus:Z

    .line 177
    invoke-virtual {v1}, Lnet/sf/smc/parser/SmcLexer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/smc/parser/SmcLexer$Token;->getLineNumber()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 180
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 182
    iput-boolean v8, p0, Lnet/sf/smc/parser/SmcParser;->_quitFlag:Z

    goto :goto_0

    .line 187
    :cond_2
    aput-object v1, v0, v9

    .line 188
    sget-object v3, Lnet/sf/smc/parser/SmcParser;->_TransMethod:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v2

    iget-object v4, p0, Lnet/sf/smc/parser/SmcParser;->_parserFSM:Lnet/sf/smc/parser/SmcParserContext;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_3
    iget-boolean v3, p0, Lnet/sf/smc/parser/SmcParser;->_parseStatus:Z

    if-nez v3, :cond_4

    .line 196
    iput-object v7, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    .line 199
    :cond_4
    iget-object v3, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    return-object v3
.end method

.method setAccessLevel(Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcFSM;->getAccessLevel()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "accessLevel":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 481
    const-string v1, "%access previously specified, new access level ignored."

    iget v2, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->warning(Ljava/lang/String;I)V

    .line 490
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/smc/model/SmcFSM;->setAccessLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setActionArgs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1128
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    if-nez v0, :cond_0

    .line 1130
    const-string v0, "There is no in-progress action to which to add the arguments."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1139
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcAction;->setArguments(Ljava/util/List;)V

    goto :goto_0
.end method

.method setActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    if-nez v0, :cond_0

    .line 943
    const-string v0, "There is no in-progress guard to which to add the action."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 952
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcGuard;->setActions(Ljava/util/List;)V

    goto :goto_0
.end method

.method setContext(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "context":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 403
    const-string v1, "%class previously specified, new context ignored."

    iget v2, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->warning(Ljava/lang/String;I)V

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1, p1}, Lnet/sf/smc/model/SmcFSM;->setContext(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCookedMode()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_lexer:Lnet/sf/smc/parser/SmcLexer;

    invoke-virtual {v0}, Lnet/sf/smc/parser/SmcLexer;->setCookedMode()V

    .line 352
    return-void
.end method

.method setEndState(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 895
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    if-nez v0, :cond_0

    .line 897
    const-string v0, "There is no in-progress guard to which to add the end state."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 906
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcGuard;->setEndState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setEntryAction(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    if-nez v0, :cond_0

    .line 618
    const-string v0, "There is no in-progress state to receive the entry action."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 633
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v0}, Lnet/sf/smc/model/SmcState;->getEntryActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 624
    const-string v0, "Entry action previously specified, new entry action ignored."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->warning(Ljava/lang/String;I)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcState;->setEntryActions(Ljava/util/List;)V

    goto :goto_0
.end method

.method setExitAction(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcAction;>;"
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    if-nez v0, :cond_0

    .line 641
    const-string v0, "There is no in-progress state to receive the exit action."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 656
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v0}, Lnet/sf/smc/model/SmcState;->getExitActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 647
    const-string v0, "Exit action previously specified, new exit action ignored."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->warning(Ljava/lang/String;I)V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_stateInProgress:Lnet/sf/smc/model/SmcState;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcState;->setExitActions(Ljava/util/List;)V

    goto :goto_0
.end method

.method setFsmClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcFSM;->setFsmClassName(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method setHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcFSM;->getHeader()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "header":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 457
    const-string v1, "%header previously specified, new header file ignored."

    iget v2, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->warning(Ljava/lang/String;I)V

    .line 466
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/smc/model/SmcFSM;->setHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setHeaderLine(I)V
    .locals 1
    .param p1, "lineNumber"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcFSM;->setHeaderLine(I)V

    .line 358
    return-void
.end method

.method setPackageName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcFSM;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 426
    const-string v1, "%package previously specified, new package ignored."

    iget v2, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->warning(Ljava/lang/String;I)V

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/smc/model/SmcFSM;->setPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setParamType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1030
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    if-nez v0, :cond_0

    .line 1032
    const-string v0, "There is no in-progress parameter to which to add the type."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1041
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_paramInProgress:Lnet/sf/smc/model/SmcParameter;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcParameter;->setType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setPopArgs(Ljava/lang/String;)V
    .locals 2
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 957
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    if-nez v0, :cond_0

    .line 959
    const-string v0, "There is no in-progress guard to which to add the action."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 968
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcGuard;->setPopArgs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setProperty(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1187
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    if-nez v0, :cond_0

    .line 1189
    const-string v0, "There is no in-progress action, set property flag failed."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 1198
    :goto_0
    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_actionInProgress:Lnet/sf/smc/model/SmcAction;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcAction;->setProperty(Z)V

    goto :goto_0
.end method

.method setPushState(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 912
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    if-nez v0, :cond_0

    .line 914
    const-string v0, "There is no in-progress guard to which to add the end state."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 935
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    invoke-virtual {v0}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v0

    sget-object v1, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    if-eq v0, v1, :cond_1

    .line 921
    const-string v0, "Cannot set push state on a non-push transition."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 925
    :cond_1
    const-string v0, "nil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 927
    const-string v0, "Cannot push to \"nil\" state."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 932
    :cond_2
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcGuard;->setPushState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setRawMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "closeChars"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_lexer:Lnet/sf/smc/parser/SmcLexer;

    invoke-virtual {v0, p1}, Lnet/sf/smc/parser/SmcLexer;->setRawMode(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method setRawMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "openChar"    # Ljava/lang/String;
    .param p2, "closeChar"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_lexer:Lnet/sf/smc/parser/SmcLexer;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/sf/smc/parser/SmcLexer;->setRawMode(CC)V

    .line 324
    return-void
.end method

.method setRawMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "openChar"    # Ljava/lang/String;
    .param p2, "closeChar"    # Ljava/lang/String;
    .param p3, "dummy"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_lexer:Lnet/sf/smc/parser/SmcLexer;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/sf/smc/parser/SmcLexer;->setRawMode(CC)V

    .line 315
    return-void
.end method

.method setRawMode2()V
    .locals 6

    .prologue
    .line 331
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_lexer:Lnet/sf/smc/parser/SmcLexer;

    sget-object v1, Lnet/sf/smc/parser/SmcParser;->OPEN_CLAUSE_LIST:Ljava/util/List;

    sget-object v2, Lnet/sf/smc/parser/SmcParser;->CLOSE_CLAUSE_LIST:Ljava/util/List;

    sget-object v3, Lnet/sf/smc/parser/SmcParser;->QUOTE_LIST:Ljava/util/List;

    const/16 v4, 0x29

    const/16 v5, 0x2c

    invoke-virtual/range {v0 .. v5}, Lnet/sf/smc/parser/SmcLexer;->setRawMode(Ljava/util/List;Ljava/util/List;Ljava/util/List;CC)V

    .line 337
    return-void
.end method

.method setSource(Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcFSM;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "src":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 367
    const-string v1, "%{ %} source previously specified, new source ignored."

    iget v2, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->warning(Ljava/lang/String;I)V

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1, p1}, Lnet/sf/smc/model/SmcFSM;->setSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setStartState(Ljava/lang/String;)V
    .locals 3
    .param p1, "stateName"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcFSM;->getStartState()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "start":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 385
    const-string v1, "%start previously specified, new start state ignored."

    iget v2, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v1, v2}, Lnet/sf/smc/parser/SmcParser;->warning(Ljava/lang/String;I)V

    .line 394
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lnet/sf/smc/parser/SmcParser;->_fsm:Lnet/sf/smc/model/SmcFSM;

    invoke-virtual {v1, p1}, Lnet/sf/smc/model/SmcFSM;->setStartState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setTransType(Lnet/sf/smc/model/SmcElement$TransType;)V
    .locals 2
    .param p1, "trans_type"    # Lnet/sf/smc/model/SmcElement$TransType;

    .prologue
    .line 864
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    if-nez v0, :cond_0

    .line 866
    const-string v0, "There is no in-progress guard to which to set the transition type."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 889
    :goto_0
    return-void

    .line 872
    :cond_0
    sget-object v0, Lnet/sf/smc/parser/SmcParser$1;->$SwitchMap$net$sf$smc$model$SmcElement$TransType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 881
    const-string v0, "Transition type must be either \"TRANS_SET\", \"TRANS_PUSH\" or \"TRANS_POP\"."

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    goto :goto_0

    .line 877
    :pswitch_0
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_guardInProgress:Lnet/sf/smc/model/SmcGuard;

    invoke-virtual {v0, p1}, Lnet/sf/smc/model/SmcGuard;->setTransType(Lnet/sf/smc/model/SmcElement$TransType;)V

    goto :goto_0

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method storeTransitionName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 697
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There already is a previously stored transition name - \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/sf/smc/parser/SmcParser;->_lineNumber:I

    invoke-virtual {p0, v0, v1}, Lnet/sf/smc/parser/SmcParser;->error(Ljava/lang/String;I)V

    .line 710
    :goto_0
    return-void

    .line 707
    :cond_0
    iput-object p1, p0, Lnet/sf/smc/parser/SmcParser;->_transitionName:Ljava/lang/String;

    goto :goto_0
.end method

.method warning(Ljava/lang/String;I)V
    .locals 4
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lnet/sf/smc/parser/SmcParser;->_messages:Ljava/util/List;

    new-instance v1, Lnet/sf/smc/parser/SmcMessage;

    iget-object v2, p0, Lnet/sf/smc/parser/SmcParser;->_name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3, p1}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method
