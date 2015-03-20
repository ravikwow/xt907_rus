.class public final Lnet/sf/smc/Smc;
.super Ljava/lang/Object;
.source "Smc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/smc/Smc$Language;
    }
.end annotation


# static fields
.field private static final ACCESS_FLAG:Ljava/lang/String; = "-access"

.field private static final APP_NAME:Ljava/lang/String; = "smc"

.field private static final CAST_FLAG:Ljava/lang/String; = "-cast"

.field private static final DEBUG_FLAG:Ljava/lang/String; = "-g"

.field private static final DEBUG_LEVEL0_FLAG:Ljava/lang/String; = "-g0"

.field private static final DEBUG_LEVEL1_FLAG:Ljava/lang/String; = "-g1"

.field private static final DIRECTORY_FLAG:Ljava/lang/String; = "-d"

.field private static final GENERIC_FLAG:Ljava/lang/String; = "-generic"

.field private static final GLEVEL_FLAG:Ljava/lang/String; = "-glevel"

.field private static final HEADER_FLAG:Ljava/lang/String; = "-headerd"

.field private static final HEADER_SUFFIX_FLAG:Ljava/lang/String; = "-hsuffix"

.field private static final HELP_FLAG:Ljava/lang/String; = "-help"

.field private static final NO_CATCH_FLAG:Ljava/lang/String; = "-nocatch"

.field private static final NO_EXCEPTIONS_FLAG:Ljava/lang/String; = "-noex"

.field private static final NO_STREAMS_FLAG:Ljava/lang/String; = "-nostreams"

.field private static final PACKAGE_LEVEL:Ljava/lang/String; = "package"

.field private static final REFLECT_FLAG:Ljava/lang/String; = "-reflect"

.field private static final RETURN_FLAG:Ljava/lang/String; = "-return"

.field private static final SERIAL_FLAG:Ljava/lang/String; = "-serial"

.field private static final SUFFIX_FLAG:Ljava/lang/String; = "-suffix"

.field private static final SYNC_FLAG:Ljava/lang/String; = "-sync"

.field private static final VERBOSE_FLAG:Ljava/lang/String; = "-verbose"

.field private static final VERSION:Ljava/lang/String; = "v. 6.1.0"

.field private static final VERSION_FLAG:Ljava/lang/String; = "-version"

.field private static final VVERBOSE_FLAG:Ljava/lang/String; = "-vverbose"

.field private static _accessLevel:Ljava/lang/String;

.field private static _accessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lnet/sf/smc/Smc$Language;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static _castType:Ljava/lang/String;

.field private static _debugLevel:I

.field private static _errorMsg:Ljava/lang/String;

.field private static _fsmVerbose:Z

.field private static _generic:Z

.field private static _graphLevel:I

.field private static _headerDirectory:Ljava/lang/String;

.field private static _hsuffix:Ljava/lang/String;

.field private static _languages:[Lnet/sf/smc/Smc$Language;

.field private static _nocatch:Z

.field private static _noex:Z

.field private static _nostreams:Z

.field private static _optionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/Smc$Language;",
            ">;>;"
        }
    .end annotation
.end field

.field private static _outputDirectory:Ljava/lang/String;

.field private static _reflection:Z

.field private static _return:Z

.field private static _serial:Z

.field private static _sourceFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _sourceFileName:Ljava/lang/String;

.field private static _suffix:Ljava/lang/String;

.field private static _sync:Z

.field static _targetLanguage:Lnet/sf/smc/Smc$Language;

.field private static _verbose:Z

.field private static _version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 1677
    const/16 v0, 0x12

    new-array v0, v0, [Lnet/sf/smc/Smc$Language;

    sput-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    .line 1678
    sget-object v6, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v0, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->LANG_NOT_SET:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    new-instance v0, Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->LANG_NOT_SET:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v2, ""

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v0, v6, v7

    .line 1684
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-c"

    const-string v7, "C"

    const-class v8, Lnet/sf/smc/generator/SmcCGenerator;

    const-class v9, Lnet/sf/smc/generator/SmcHeaderCGenerator;

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1691
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_PLUS_PLUS:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_PLUS_PLUS:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-c++"

    const-string v7, "C++"

    const-class v8, Lnet/sf/smc/generator/SmcCppGenerator;

    const-class v9, Lnet/sf/smc/generator/SmcHeaderGenerator;

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1698
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_SHARP:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_SHARP:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-csharp"

    const-string v7, "C#"

    const-class v8, Lnet/sf/smc/generator/SmcCSharpGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1705
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JAVA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JAVA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-java"

    const-string v7, "Java"

    const-class v8, Lnet/sf/smc/generator/SmcJavaGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1712
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->GRAPH:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->GRAPH:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-graph"

    const-string v7, "-graph"

    const-class v8, Lnet/sf/smc/generator/SmcGraphGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1719
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->GROOVY:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->GROOVY:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-groovy"

    const-string v7, "Groovy"

    const-class v8, Lnet/sf/smc/generator/SmcGroovyGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1726
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->LUA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->LUA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-lua"

    const-string v7, "Lua"

    const-class v8, Lnet/sf/smc/generator/SmcLuaGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1733
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->OBJECTIVE_C:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->OBJECTIVE_C:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-objc"

    const-string v7, "Objective-C"

    const-class v8, Lnet/sf/smc/generator/SmcObjCGenerator;

    const-class v9, Lnet/sf/smc/generator/SmcHeaderObjCGenerator;

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1740
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PERL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PERL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-perl"

    const-string v7, "Perl"

    const-class v8, Lnet/sf/smc/generator/SmcPerlGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1747
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PHP:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PERL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-php"

    const-string v7, "PHP"

    const-class v8, Lnet/sf/smc/generator/SmcPhpGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1754
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PYTHON:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PYTHON:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-python"

    const-string v7, "Python"

    const-class v8, Lnet/sf/smc/generator/SmcPythonGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1761
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->RUBY:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->RUBY:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-ruby"

    const-string v7, "Ruby"

    const-class v8, Lnet/sf/smc/generator/SmcRubyGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1768
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->SCALA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->SCALA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-scala"

    const-string v7, "Scala"

    const-class v8, Lnet/sf/smc/generator/SmcScalaGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1775
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TABLE:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TABLE:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-table"

    const-string v7, "-table"

    const-class v8, Lnet/sf/smc/generator/SmcTableGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1782
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TCL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TCL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-tcl"

    const-string v7, "[incr Tcl]"

    const-class v8, Lnet/sf/smc/generator/SmcTclGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1789
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->VB:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->VB:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-vb"

    const-string v7, "VB.net"

    const-class v8, Lnet/sf/smc/generator/SmcVBGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1796
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JS:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v4, Lnet/sf/smc/Smc$Language;

    sget-object v5, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JS:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    const-string v6, "-js"

    const-string v7, "JavaScript"

    const-class v8, Lnet/sf/smc/generator/SmcJSGenerator;

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lnet/sf/smc/Smc$Language;-><init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v0, v1

    .line 1804
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1806
    .local v12, "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    .line 1834
    const-class v0, Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    .line 1836
    .local v13, "target":Lnet/sf/smc/parser/SmcParser$TargetLanguage;
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1839
    .end local v13    # "target":Lnet/sf/smc/parser/SmcParser$TargetLanguage;
    :cond_0
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-d"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-g"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-g0"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-g1"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-help"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-nocatch"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-return"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-suffix"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-verbose"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-version"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-vverbose"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1853
    .restart local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_PLUS_PLUS:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1854
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-cast"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-noex"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-nostreams"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    .restart local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JAVA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1861
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-access"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    .restart local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_PLUS_PLUS:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1866
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1867
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->OBJECTIVE_C:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1868
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-headerd"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-hsuffix"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1873
    .restart local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_SHARP:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1874
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JAVA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1875
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->VB:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1876
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->GROOVY:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1877
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->SCALA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1878
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-sync"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1882
    .restart local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_SHARP:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1883
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JAVA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1884
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->VB:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1885
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TCL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->LUA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1887
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PERL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1888
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PHP:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1889
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->PYTHON:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1890
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->RUBY:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1891
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->GROOVY:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1892
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->SCALA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1893
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-reflect"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    .restart local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_SHARP:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JAVA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->VB:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1900
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TCL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1901
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_PLUS_PLUS:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1902
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->GROOVY:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1903
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->SCALA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1904
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-serial"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    .restart local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->GRAPH:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1909
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-glevel"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1913
    .restart local v12    # "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_SHARP:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1914
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JAVA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    sget-object v0, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v1, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->VB:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1916
    sget-object v0, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    const-string v1, "-generic"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/smc/Smc;->_accessMap:Ljava/util/Map;

    .line 1923
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1924
    .local v10, "accessLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "public"

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1925
    const-string v0, "protected"

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    const-string v0, "package"

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1927
    const-string v0, "private"

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    sget-object v0, Lnet/sf/smc/Smc;->_accessMap:Ljava/util/Map;

    sget-object v1, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    sget-object v2, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->JAVA:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _findLanguage(Ljava/lang/String;)Lnet/sf/smc/Smc$Language;
    .locals 4
    .param p0, "option"    # Ljava/lang/String;

    .prologue
    .line 981
    const/4 v1, 0x0

    .line 983
    .local v1, "retval":Lnet/sf/smc/Smc$Language;
    const/4 v0, 0x1

    .line 984
    .local v0, "index":I
    :goto_0
    sget-object v2, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 987
    sget-object v2, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lnet/sf/smc/Smc$Language;->optionFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 990
    sget-object v2, Lnet/sf/smc/Smc;->_languages:[Lnet/sf/smc/Smc$Language;

    aget-object v1, v2, v0

    .line 985
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    :cond_1
    return-object v1
.end method

.method private static _findTargetLanguage([Ljava/lang/String;)Lnet/sf/smc/Smc$Language;
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 951
    const/4 v2, 0x0

    .line 953
    .local v2, "retval":Lnet/sf/smc/Smc$Language;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 956
    aget-object v3, p0, v0

    invoke-static {v3}, Lnet/sf/smc/Smc;->_findLanguage(Ljava/lang/String;)Lnet/sf/smc/Smc$Language;

    move-result-object v1

    .local v1, "lang":Lnet/sf/smc/Smc$Language;
    if-eqz v1, :cond_1

    .line 959
    if-eqz v2, :cond_0

    if-eq v2, v1, :cond_0

    .line 961
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Only one target language may be specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 968
    :cond_0
    move-object v2, v1

    .line 953
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    .end local v1    # "lang":Lnet/sf/smc/Smc$Language;
    :cond_2
    return-object v2
.end method

.method private static _generateCode(Lnet/sf/smc/model/SmcFSM;)V
    .locals 29
    .param p0, "fsm"    # Lnet/sf/smc/model/SmcFSM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1210
    sget-object v3, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v18, v3, -0x3

    .line 1212
    .local v18, "endIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "file.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1214
    .local v28, "srcFilePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/sf/smc/model/SmcFSM;->getTargetFileName()Ljava/lang/String;

    move-result-object v4

    .line 1216
    .local v4, "srcFileBase":Ljava/lang/String;
    const-string v20, ""

    .line 1217
    .local v20, "headerFileName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1218
    .local v21, "headerFileStream":Ljava/io/FileOutputStream;
    const/16 v24, 0x0

    .line 1219
    .local v24, "headerStream":Ljava/io/PrintStream;
    const/16 v22, 0x0

    .line 1220
    .local v22, "headerGenerator":Lnet/sf/smc/generator/SmcCodeGenerator;
    const-string v27, ""

    .line 1221
    .local v27, "srcFileName":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1222
    .local v25, "sourceFileStream":Ljava/io/FileOutputStream;
    const/16 v26, 0x0

    .line 1223
    .local v26, "sourceStream":Ljava/io/PrintStream;
    const/4 v2, 0x0

    .line 1224
    .local v2, "options":Lnet/sf/smc/generator/SmcOptions;
    const/16 v19, 0x0

    .line 1230
    .local v19, "generator":Lnet/sf/smc/generator/SmcCodeGenerator;
    const-string v3, "line.separator"

    const-string v5, "\n"

    invoke-static {v3, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1234
    sget-object v3, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 1235
    if-ltz v18, :cond_0

    .line 1237
    sget-object v3, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v18, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1244
    :cond_0
    sget-object v3, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1246
    sget-object v28, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    .line 1251
    :cond_1
    sget-object v3, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1253
    sget-object v23, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    .line 1260
    .local v23, "headerPath":Ljava/lang/String;
    :goto_0
    sget-object v3, Lnet/sf/smc/Smc;->_accessLevel:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 1262
    const-string v3, "public"

    sput-object v3, Lnet/sf/smc/Smc;->_accessLevel:Ljava/lang/String;

    .line 1269
    :cond_2
    :goto_1
    new-instance v2, Lnet/sf/smc/generator/SmcOptions;

    .end local v2    # "options":Lnet/sf/smc/generator/SmcOptions;
    invoke-virtual/range {p0 .. p0}, Lnet/sf/smc/model/SmcFSM;->getSourceFileName()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    sget-object v6, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    sget-object v7, Lnet/sf/smc/Smc;->_castType:Ljava/lang/String;

    sget v8, Lnet/sf/smc/Smc;->_graphLevel:I

    sget-boolean v9, Lnet/sf/smc/Smc;->_serial:Z

    sget v10, Lnet/sf/smc/Smc;->_debugLevel:I

    sget-boolean v11, Lnet/sf/smc/Smc;->_noex:Z

    sget-boolean v12, Lnet/sf/smc/Smc;->_nocatch:Z

    sget-boolean v13, Lnet/sf/smc/Smc;->_nostreams:Z

    sget-boolean v14, Lnet/sf/smc/Smc;->_reflection:Z

    sget-boolean v15, Lnet/sf/smc/Smc;->_sync:Z

    sget-boolean v16, Lnet/sf/smc/Smc;->_generic:Z

    sget-object v17, Lnet/sf/smc/Smc;->_accessLevel:Ljava/lang/String;

    invoke-direct/range {v2 .. v17}, Lnet/sf/smc/generator/SmcOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZZZZZZLjava/lang/String;)V

    .line 1287
    .restart local v2    # "options":Lnet/sf/smc/generator/SmcOptions;
    sget-object v3, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v3}, Lnet/sf/smc/Smc$Language;->hasHeaderFile()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 1289
    sget-object v3, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v3, v2}, Lnet/sf/smc/Smc$Language;->headerGenerator(Lnet/sf/smc/generator/SmcOptions;)Lnet/sf/smc/generator/SmcCodeGenerator;

    move-result-object v22

    .line 1291
    sget-object v3, Lnet/sf/smc/Smc;->_hsuffix:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4, v3}, Lnet/sf/smc/generator/SmcCodeGenerator;->sourceFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1294
    new-instance v21, Ljava/io/FileOutputStream;

    .end local v21    # "headerFileStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1296
    .restart local v21    # "headerFileStream":Ljava/io/FileOutputStream;
    new-instance v24, Ljava/io/PrintStream;

    .end local v24    # "headerStream":Ljava/io/PrintStream;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1298
    .restart local v24    # "headerStream":Ljava/io/PrintStream;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lnet/sf/smc/generator/SmcCodeGenerator;->setSource(Ljava/io/PrintStream;)V

    .line 1302
    :cond_3
    sget-object v3, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v3, v2}, Lnet/sf/smc/Smc$Language;->generator(Lnet/sf/smc/generator/SmcOptions;)Lnet/sf/smc/generator/SmcCodeGenerator;

    move-result-object v19

    .line 1303
    sget-object v3, Lnet/sf/smc/Smc;->_suffix:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4, v3}, Lnet/sf/smc/generator/SmcCodeGenerator;->sourceFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1306
    new-instance v25, Ljava/io/FileOutputStream;

    .end local v25    # "sourceFileStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1308
    .restart local v25    # "sourceFileStream":Ljava/io/FileOutputStream;
    new-instance v26, Ljava/io/PrintStream;

    .end local v26    # "sourceStream":Ljava/io/PrintStream;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1310
    .restart local v26    # "sourceStream":Ljava/io/PrintStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/sf/smc/generator/SmcCodeGenerator;->setSource(Ljava/io/PrintStream;)V

    .line 1313
    if-eqz v22, :cond_4

    .line 1315
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcFSM;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1316
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->flush()V

    .line 1317
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 1319
    sget-boolean v3, Lnet/sf/smc/Smc;->_verbose:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 1321
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[wrote "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1322
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1323
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1328
    :cond_4
    if-eqz v19, :cond_5

    .line 1330
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/sf/smc/model/SmcFSM;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 1331
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 1332
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 1334
    sget-boolean v3, Lnet/sf/smc/Smc;->_verbose:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 1336
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[wrote "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1337
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1338
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1342
    :cond_5
    return-void

    .line 1257
    .end local v23    # "headerPath":Ljava/lang/String;
    :cond_6
    move-object/from16 v23, v28

    .restart local v23    # "headerPath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1264
    :cond_7
    sget-object v3, Lnet/sf/smc/Smc;->_accessLevel:Ljava/lang/String;

    const-string v5, "package"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1266
    const-string v3, "/* package */"

    sput-object v3, Lnet/sf/smc/Smc;->_accessLevel:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private static _getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fullName"    # Ljava/lang/String;

    .prologue
    .line 1194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1195
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".sm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static _isValidAccessLevel(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1012
    sget-object v2, Lnet/sf/smc/Smc;->_accessMap:Ljava/util/Map;

    sget-object v3, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1015
    .local v1, "retcode":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1017
    sget-object v2, Lnet/sf/smc/Smc;->_accessMap:Ljava/util/Map;

    sget-object v3, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1020
    .local v0, "levels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1023
    .end local v0    # "levels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v1
.end method

.method private static _isValidCast(Ljava/lang/String;)Z
    .locals 2
    .param p0, "castType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1029
    const-string v1, "dynamic_cast"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "static_cast"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "reinterpret_cast"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _isValidDirectory(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1037
    const/4 v1, 0x0

    .line 1041
    .local v1, "retcode":Z
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v0, "pathObj":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    .line 1063
    .end local v0    # "pathObj":Ljava/io/File;
    :goto_0
    return v1

    .line 1048
    .restart local v0    # "pathObj":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1050
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not writeable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1058
    .end local v0    # "pathObj":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1060
    .local v2, "securex":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to access \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 1055
    .end local v2    # "securex":Ljava/lang/SecurityException;
    .restart local v0    # "pathObj":Ljava/io/File;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static _needHelp([Ljava/lang/String;)Z
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 923
    const/4 v1, 0x0

    .line 925
    .local v1, "retval":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    if-nez v1, :cond_2

    .line 927
    aget-object v2, p0, v0

    const-string v3, "-hel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 929
    const/4 v1, 0x1

    .line 930
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lnet/sf/smc/Smc;->_usage(Ljava/io/PrintStream;)V

    .line 925
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_1
    aget-object v2, p0, v0

    const-string v3, "-vers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 934
    const/4 v1, 0x1

    .line 935
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/sf/smc/Smc;->_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 939
    :cond_2
    return v1
.end method

.method private static _outputMessages(Ljava/lang/String;Ljava/io/PrintStream;Ljava/util/List;)V
    .locals 3
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintStream;",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/parser/SmcMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/parser/SmcMessage;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/parser/SmcMessage;

    .line 1354
    .local v1, "message":Lnet/sf/smc/parser/SmcMessage;
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1355
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 1356
    invoke-virtual {v1}, Lnet/sf/smc/parser/SmcMessage;->getLineNumber()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 1358
    invoke-virtual {v1}, Lnet/sf/smc/parser/SmcMessage;->getLevel()I

    move-result v2

    if-nez v2, :cond_0

    .line 1360
    const-string v2, ": warning - "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1367
    :goto_1
    invoke-virtual {v1}, Lnet/sf/smc/parser/SmcMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1364
    :cond_0
    const-string v2, ": error - "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1370
    .end local v1    # "message":Lnet/sf/smc/parser/SmcMessage;
    :cond_1
    return-void
.end method

.method private static _supportsOption(Ljava/lang/String;)Z
    .locals 2
    .param p0, "option"    # Ljava/lang/String;

    .prologue
    .line 1001
    sget-object v1, Lnet/sf/smc/Smc;->_optionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1003
    .local v0, "languages":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/Smc$Language;>;"
    if-eqz v0, :cond_0

    sget-object v1, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static _usage(Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 1068
    const-string v0, "usage: "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1069
    const-string v0, "smc"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1070
    const-string v0, " [-access level]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1071
    const-string v0, " [-suffix suffix]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1072
    const-string v0, " [-g | -g0 | -g1]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1073
    const-string v0, " [-nostreams]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1074
    const-string v0, " [-version]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1075
    const-string v0, " [-verbose]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1076
    const-string v0, " [-help]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1077
    const-string v0, " [-sync]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1078
    const-string v0, " [-noex]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1079
    const-string v0, " [-nocatch]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1080
    const-string v0, " [-serial]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1081
    const-string v0, " [-return]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1082
    const-string v0, " [-reflect]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1083
    const-string v0, " [-generic]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1084
    const-string v0, " [-cast cast_type]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1085
    const-string v0, " [-d directory]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1086
    const-string v0, " [-headerd directory]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1087
    const-string v0, " [-hsuffix suffix]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1088
    const-string v0, " [-glevel int]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1089
    const-string v0, " {-c | -c++ | -csharp | -graph | -groovy | -java | -js "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1091
    const-string v0, "-lua | -objc | -perl | -php | -python | -ruby | "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1093
    const-string v0, "-scala | -table |-tcl | -vb}"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1094
    const-string v0, " statemap_file"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1095
    const-string v0, "    where:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1096
    const-string v0, "\t-access   Use this access keyword for the generated classes"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1098
    const-string v0, "\t          (use with -java only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1099
    const-string v0, "\t-suffix   Add this suffix to output file"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1101
    const-string v0, "\t-g, -g0   Add level 0 debugging output to generated code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1103
    const-string v0, "\t          (output for entering, exiting states and transitions)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1105
    const-string v0, "\t-g1       Add level 1 debugging output to generated code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1107
    const-string v0, "\t          (level 0 output plus state Entry and Exit actions)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1109
    const-string v0, "\t-nostreams Do not use C++ iostreams "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1110
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1111
    const-string v0, "(use with -c++ only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1112
    const-string v0, "\t-version  Print smc version "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1113
    const-string v0, "information to standard out and exit"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1114
    const-string v0, "\t-verbose  "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1115
    const-string v0, "Output more compiler messages."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1116
    const-string v0, "\t-help     Print this message to "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1117
    const-string v0, "standard out and exit"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1118
    const-string v0, "\t-sync     Synchronize access to transition methods"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1120
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1121
    const-string v0, "(use with -csharp, -java, -groovy, -scala and -vb only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1122
    const-string v0, "\t-noex     Do not generate C++ exception throws "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1124
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1125
    const-string v0, "(use with -c++ only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1126
    const-string v0, "\t-nocatch  Do not generate try/catch/rethrow "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1128
    const-string v0, "code (not recommended)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1129
    const-string v0, "\t-serial   Generate serialization code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1131
    const-string v0, "\t-return   "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1132
    const-string v0, "Smc.main() returns, not exits"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1133
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1134
    const-string v0, "(use this option with ANT)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1135
    const-string v0, "\t-reflect  Generate reflection code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1136
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1137
    const-string v0, "(use with -csharp, -groovy, -java, -lua,"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1138
    const-string v0, " -perl, -php, -python, -ruby, -scala, "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1139
    const-string v0, "-tcl and -vb only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1140
    const-string v0, "\t-generic  Use generic collections"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1141
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1142
    const-string v0, "(use with -csharp, -java or -vb and -reflect only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1143
    const-string v0, "\t-cast     Use this C++ cast type "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1144
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1145
    const-string v0, "(use with -c++ only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1146
    const-string v0, "\t-d        Place generated files in directory"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1148
    const-string v0, "\t-headerd  Place generated header files in "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1150
    const-string v0, "directory"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1151
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1152
    const-string v0, "(use with -c, -c++, -objc only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1153
    const-string v0, "\t-hsuffix  Add this suffix to output header file"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1155
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1156
    const-string v0, "(use with -c, -c++, -objc only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1157
    const-string v0, "\t-glevel   Detail level from 0 (least) to 2 "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1159
    const-string v0, "(greatest)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1160
    const-string v0, "\t          "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1161
    const-string v0, "(use with -graph only)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1162
    const-string v0, "\t-c        Generate C code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1163
    const-string v0, "\t-c++      Generate C++ code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1164
    const-string v0, "\t-csharp   Generate C# code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1165
    const-string v0, "\t-graph    Generate GraphViz DOT file"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1166
    const-string v0, "\t-groovy   Generate Groovy code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1167
    const-string v0, "\t-java     Generate Java code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1168
    const-string v0, "\t-js       Generate JavaScript code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1169
    const-string v0, "\t-lua      Generate Lua code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1170
    const-string v0, "\t-objc     Generate Objective-C code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1171
    const-string v0, "\t-perl     Generate Perl code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1172
    const-string v0, "\t-php      Generate PHP code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1173
    const-string v0, "\t-python   Generate Python code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1174
    const-string v0, "\t-ruby     Generate Ruby code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1175
    const-string v0, "\t-scala    Generate Scala code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1176
    const-string v0, "\t-table    Generate HTML table code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1177
    const-string v0, "\t-tcl      Generate [incr Tcl] code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1178
    const-string v0, "\t-vb       Generate VB.Net code"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 1180
    const-string v0, "    Note: statemap_file must end in \".sm\""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1182
    const-string v0, "    Note: must select one of -c, -c++, -csharp, "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1184
    const-string v0, "-graph, -groovy, -java, -lua, -objc, -perl, "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1185
    const-string v0, "-php, -python, -ruby, -scala, -table, -tcl or -vb."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 24
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 121
    const/4 v12, 0x0

    .line 123
    .local v12, "retcode":I
    new-instance v20, Ljava/lang/String;

    invoke-direct/range {v20 .. v20}, Ljava/lang/String;-><init>()V

    sput-object v20, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    .line 126
    const/16 v20, 0x0

    sput-object v20, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    .line 127
    const-string v20, "v. 6.1.0"

    sput-object v20, Lnet/sf/smc/Smc;->_version:Ljava/lang/String;

    .line 128
    const/16 v20, -0x1

    sput v20, Lnet/sf/smc/Smc;->_debugLevel:I

    .line 129
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_nostreams:Z

    .line 130
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_sync:Z

    .line 131
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_noex:Z

    .line 132
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_nocatch:Z

    .line 133
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_serial:Z

    .line 134
    const-string v20, "dynamic_cast"

    sput-object v20, Lnet/sf/smc/Smc;->_castType:Ljava/lang/String;

    .line 135
    const/16 v20, 0x0

    sput v20, Lnet/sf/smc/Smc;->_graphLevel:I

    .line 136
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    sput-object v20, Lnet/sf/smc/Smc;->_sourceFileList:Ljava/util/List;

    .line 137
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_verbose:Z

    .line 138
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_fsmVerbose:Z

    .line 139
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_return:Z

    .line 140
    const/16 v20, 0x0

    sput-boolean v20, Lnet/sf/smc/Smc;->_reflection:Z

    .line 141
    const/16 v20, 0x0

    sput-object v20, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    .line 142
    const/16 v20, 0x0

    sput-object v20, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    .line 143
    const/16 v20, 0x0

    sput-object v20, Lnet/sf/smc/Smc;->_suffix:Ljava/lang/String;

    .line 144
    const/16 v20, 0x0

    sput-object v20, Lnet/sf/smc/Smc;->_hsuffix:Ljava/lang/String;

    .line 145
    const/16 v20, 0x0

    sput-object v20, Lnet/sf/smc/Smc;->_accessLevel:Ljava/lang/String;

    .line 148
    invoke-static/range {p0 .. p0}, Lnet/sf/smc/Smc;->parseArgs([Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 150
    const/4 v12, 0x1

    .line 151
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "smc: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    :cond_0
    :goto_0
    sget-boolean v20, Lnet/sf/smc/Smc;->_return:Z

    if-nez v20, :cond_1

    .line 321
    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    .line 327
    :cond_1
    return-void

    .line 160
    :cond_2
    const-wide/16 v14, 0x0

    .line 162
    .local v14, "startTime":J
    const-wide/16 v18, 0x0

    .line 165
    .local v18, "totalStartTime":J
    sget-boolean v20, Lnet/sf/smc/Smc;->_verbose:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 172
    :cond_3
    :try_start_0
    sget-object v20, Lnet/sf/smc/Smc;->_sourceFileList:Ljava/util/List;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 173
    .local v13, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 176
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    sput-object v20, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    .line 178
    sget-boolean v20, Lnet/sf/smc/Smc;->_verbose:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 180
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "[parsing started "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 181
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v21, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 182
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 187
    :cond_4
    new-instance v10, Lnet/sf/smc/parser/SmcParser;

    sget-object v20, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lnet/sf/smc/Smc;->_getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/io/FileInputStream;

    sget-object v22, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    invoke-direct/range {v21 .. v22}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v22, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual/range {v22 .. v22}, Lnet/sf/smc/Smc$Language;->language()Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    move-result-object v22

    sget-boolean v23, Lnet/sf/smc/Smc;->_fsmVerbose:Z

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v10, v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParser;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lnet/sf/smc/parser/SmcParser$TargetLanguage;Z)V

    .line 195
    .local v10, "parser":Lnet/sf/smc/parser/SmcParser;
    invoke-virtual {v10}, Lnet/sf/smc/parser/SmcParser;->parse()Lnet/sf/smc/model/SmcFSM;

    move-result-object v9

    .line 197
    .local v9, "fsm":Lnet/sf/smc/model/SmcFSM;
    sget-boolean v20, Lnet/sf/smc/Smc;->_verbose:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 201
    .local v7, "finishTime":J
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "[parsing completed "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 202
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sub-long v21, v7, v14

    invoke-virtual/range {v20 .. v22}, Ljava/io/PrintStream;->print(J)V

    .line 203
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "ms]"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    .end local v7    # "finishTime":J
    :cond_5
    invoke-virtual {v10}, Lnet/sf/smc/parser/SmcParser;->getMessages()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 209
    sget-object v20, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10}, Lnet/sf/smc/parser/SmcParser;->getMessages()Ljava/util/List;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lnet/sf/smc/Smc;->_outputMessages(Ljava/lang/String;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 213
    :cond_6
    if-nez v9, :cond_7

    .line 215
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 219
    :cond_7
    new-instance v4, Lnet/sf/smc/SmcSyntaxChecker;

    sget-object v20, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    sget-object v21, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual/range {v21 .. v21}, Lnet/sf/smc/Smc$Language;->language()Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lnet/sf/smc/SmcSyntaxChecker;-><init>(Ljava/lang/String;Lnet/sf/smc/parser/SmcParser$TargetLanguage;)V

    .line 224
    .local v4, "checker":Lnet/sf/smc/SmcSyntaxChecker;
    sget-boolean v20, Lnet/sf/smc/Smc;->_verbose:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 226
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "[checking "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 227
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v21, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    :cond_8
    invoke-virtual {v9, v4}, Lnet/sf/smc/model/SmcFSM;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 233
    invoke-virtual {v4}, Lnet/sf/smc/SmcSyntaxChecker;->getMessages()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 235
    sget-object v20, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lnet/sf/smc/SmcSyntaxChecker;->getMessages()Ljava/util/List;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lnet/sf/smc/Smc;->_outputMessages(Ljava/lang/String;Ljava/io/PrintStream;Ljava/util/List;)V

    .line 240
    :cond_9
    invoke-virtual {v4}, Lnet/sf/smc/SmcSyntaxChecker;->isValid()Z

    move-result v20

    if-nez v20, :cond_a

    .line 242
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 247
    :cond_a
    invoke-static {v9}, Lnet/sf/smc/Smc;->_generateCode(Lnet/sf/smc/model/SmcFSM;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    .line 253
    .end local v4    # "checker":Lnet/sf/smc/SmcSyntaxChecker;
    .end local v9    # "fsm":Lnet/sf/smc/model/SmcFSM;
    .end local v10    # "parser":Lnet/sf/smc/parser/SmcParser;
    .end local v13    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 255
    .local v6, "filex":Ljava/io/FileNotFoundException;
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v21, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, ": error - "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 257
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    .end local v6    # "filex":Ljava/io/FileNotFoundException;
    :cond_b
    :goto_2
    sget-boolean v20, Lnet/sf/smc/Smc;->_verbose:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 305
    .local v16, "totalFinishTime":J
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "[total "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sub-long v21, v16, v18

    invoke-virtual/range {v20 .. v22}, Ljava/io/PrintStream;->print(J)V

    .line 308
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "ms]"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v16    # "totalFinishTime":J
    :catch_1
    move-exception v11

    .line 263
    .local v11, "parsex":Ljava/text/ParseException;
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v21, Lnet/sf/smc/Smc;->_sourceFileName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 264
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 265
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(I)V

    .line 266
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, ": error - "

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 267
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 269
    .end local v11    # "parsex":Ljava/text/ParseException;
    :catch_2
    move-exception v5

    .line 271
    .local v5, "e":Ljava/lang/Exception;
    const/4 v12, 0x1

    .line 273
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, "SMC has experienced a fatal error. Please e-mail the following error output to rapp@acm.org. Thank you.\n"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, "--------------------------------------------------------------------------------"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMC version: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lnet/sf/smc/Smc;->_version:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "JRE version: v. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "java.version"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "JRE vender: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "java.vendor"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "java.vendor.url"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "JVM: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "java.vm.name"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", v. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "java.vm.version"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "JVM vender: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "java.vm.vendor"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, "Exception:\n"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, "--------------------------------------------------------------------------------"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static parseArgs([Ljava/lang/String;)Z
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 351
    const/4 v4, 0x0

    .line 352
    .local v4, "helpFlag":Z
    const/4 v7, 0x1

    .line 356
    .local v7, "retcode":Z
    invoke-static {p0}, Lnet/sf/smc/Smc;->_needHelp([Ljava/lang/String;)Z

    move-result v4

    .line 357
    if-nez v4, :cond_0

    .line 363
    :try_start_0
    invoke-static {p0}, Lnet/sf/smc/Smc;->_findTargetLanguage([Ljava/lang/String;)Lnet/sf/smc/Smc$Language;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    if-ne v7, v11, :cond_0

    sget-object v9, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    if-nez v9, :cond_0

    .line 373
    const/4 v7, 0x0

    .line 374
    const-string v9, "Target language was not specified."

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    .line 380
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v1, 0x0

    .line 384
    .local v1, "argsConsumed":I
    :goto_1
    array-length v9, p0

    if-ge v5, v9, :cond_3c

    if-nez v4, :cond_3c

    if-ne v7, v11, :cond_3c

    aget-object v9, p0, v5

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_3c

    .line 389
    aget-object v9, p0, v5

    invoke-static {v9}, Lnet/sf/smc/Smc;->_findLanguage(Ljava/lang/String;)Lnet/sf/smc/Smc$Language;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 391
    const/4 v1, 0x1

    .line 385
    :goto_2
    add-int/2addr v5, v1

    const/4 v1, 0x0

    goto :goto_1

    .line 365
    .end local v1    # "argsConsumed":I
    .end local v5    # "i":I
    :catch_0
    move-exception v0

    .line 367
    .local v0, "argex":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 393
    .end local v0    # "argex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "argsConsumed":I
    .restart local v5    # "i":I
    :cond_1
    aget-object v9, p0, v5

    const-string v10, "-ac"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_6

    .line 396
    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    if-eq v9, v10, :cond_2

    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_3

    .line 399
    :cond_2
    const/4 v7, 0x0

    .line 400
    const-string v9, "-access not followed by an access keyword"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto :goto_2

    .line 404
    :cond_3
    const-string v9, "-access"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 406
    const/4 v7, 0x0

    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-access"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto :goto_2

    .line 413
    :cond_4
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    invoke-static {v9}, Lnet/sf/smc/Smc;->_isValidAccessLevel(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 415
    const/4 v7, 0x0

    .line 416
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support access level"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    aget-object v10, p0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 424
    :cond_5
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    sput-object v9, Lnet/sf/smc/Smc;->_accessLevel:Ljava/lang/String;

    .line 425
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 428
    :cond_6
    aget-object v9, p0, v5

    const-string v10, "-sy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_8

    .line 430
    const-string v9, "-sync"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 432
    const/4 v7, 0x0

    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-sync"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 441
    :cond_7
    sput-boolean v11, Lnet/sf/smc/Smc;->_sync:Z

    .line 442
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 445
    :cond_8
    aget-object v9, p0, v5

    const-string v10, "-su"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_c

    .line 448
    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    if-eq v9, v10, :cond_9

    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_a

    .line 451
    :cond_9
    const/4 v7, 0x0

    .line 452
    const-string v9, "-suffix not followed by a value"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 455
    :cond_a
    const-string v9, "-suffix"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 457
    const/4 v7, 0x0

    .line 458
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-suffix"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 466
    :cond_b
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    sput-object v9, Lnet/sf/smc/Smc;->_suffix:Ljava/lang/String;

    .line 467
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 470
    :cond_c
    aget-object v9, p0, v5

    const-string v10, "-hs"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_10

    .line 473
    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    if-eq v9, v10, :cond_d

    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_e

    .line 476
    :cond_d
    const/4 v7, 0x0

    .line 477
    const-string v9, "-hsuffix not followed by a value"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 481
    :cond_e
    const-string v9, "-hsuffix"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 484
    const/4 v7, 0x0

    .line 485
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-hsuffix"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 493
    :cond_f
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    sput-object v9, Lnet/sf/smc/Smc;->_hsuffix:Ljava/lang/String;

    .line 494
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 497
    :cond_10
    aget-object v9, p0, v5

    const-string v10, "-ca"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_15

    .line 500
    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    if-eq v9, v10, :cond_11

    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_12

    .line 503
    :cond_11
    const/4 v7, 0x0

    .line 504
    const-string v9, "-cast not followed by a value"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 508
    :cond_12
    const-string v9, "-cast"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 510
    const/4 v7, 0x0

    .line 511
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-cast"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 517
    :cond_13
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    invoke-static {v9}, Lnet/sf/smc/Smc;->_isValidCast(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 519
    const/4 v7, 0x0

    .line 520
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    aget-object v10, p0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is an invalid C++ cast type."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 527
    :cond_14
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    sput-object v9, Lnet/sf/smc/Smc;->_castType:Ljava/lang/String;

    .line 528
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 531
    :cond_15
    aget-object v9, p0, v5

    const-string v10, "-d"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_1a

    .line 534
    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    if-eq v9, v10, :cond_16

    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_17

    .line 537
    :cond_16
    const/4 v7, 0x0

    .line 538
    const-string v9, "-d not followed by directory"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 542
    :cond_17
    const-string v9, "-d"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 545
    const/4 v7, 0x0

    .line 546
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 554
    :cond_18
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    sput-object v9, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    .line 555
    const/4 v1, 0x2

    .line 559
    sget-object v9, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 562
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    .line 566
    :cond_19
    sget-object v9, Lnet/sf/smc/Smc;->_outputDirectory:Ljava/lang/String;

    invoke-static {v9}, Lnet/sf/smc/Smc;->_isValidDirectory(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_2

    .line 570
    :cond_1a
    aget-object v9, p0, v5

    const-string v10, "-hea"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_1f

    .line 573
    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    if-eq v9, v10, :cond_1b

    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_1c

    .line 576
    :cond_1b
    const/4 v7, 0x0

    .line 577
    const-string v9, "-headerd not followed by directory"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 580
    :cond_1c
    const-string v9, "-headerd"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 583
    const/4 v7, 0x0

    .line 584
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-headerd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 592
    :cond_1d
    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    sput-object v9, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    .line 593
    const/4 v1, 0x2

    .line 597
    sget-object v9, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 600
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    .line 604
    :cond_1e
    sget-object v9, Lnet/sf/smc/Smc;->_headerDirectory:Ljava/lang/String;

    invoke-static {v9}, Lnet/sf/smc/Smc;->_isValidDirectory(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_2

    .line 608
    :cond_1f
    aget-object v9, p0, v5

    const-string v10, "-gl"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_25

    .line 611
    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    if-eq v9, v10, :cond_20

    add-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_21

    .line 614
    :cond_20
    const/4 v7, 0x0

    .line 615
    const-string v9, "-glevel not followed by integer"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 619
    :cond_21
    const-string v9, "-glevel"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 621
    const/4 v7, 0x0

    .line 622
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-glevel"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 632
    :cond_22
    add-int/lit8 v9, v5, 0x1

    :try_start_1
    aget-object v9, p0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lnet/sf/smc/Smc;->_graphLevel:I

    .line 635
    sget v9, Lnet/sf/smc/Smc;->_graphLevel:I

    if-ltz v9, :cond_23

    sget v9, Lnet/sf/smc/Smc;->_graphLevel:I

    const/4 v10, 0x2

    if-le v9, v10, :cond_24

    .line 638
    :cond_23
    const/4 v7, 0x0

    .line 639
    const-string v9, "-glevel must be 0, 1 or 2"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 648
    :catch_1
    move-exception v6

    .line 650
    .local v6, "numberex":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 652
    const-string v9, "-glevel not followed by valid integer"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 645
    .end local v6    # "numberex":Ljava/lang/NumberFormatException;
    :cond_24
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 658
    :cond_25
    aget-object v9, p0, v5

    const-string v10, "-g"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_27

    .line 660
    const-string v9, "-g"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 662
    const/4 v7, 0x0

    .line 663
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-g"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 671
    :cond_26
    sput v12, Lnet/sf/smc/Smc;->_debugLevel:I

    .line 672
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 675
    :cond_27
    aget-object v9, p0, v5

    const-string v10, "-g0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_29

    .line 677
    const-string v9, "-g0"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    .line 679
    const/4 v7, 0x0

    .line 680
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-g0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 688
    :cond_28
    sput v12, Lnet/sf/smc/Smc;->_debugLevel:I

    .line 689
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 692
    :cond_29
    aget-object v9, p0, v5

    const-string v10, "-g1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_2b

    .line 694
    const-string v9, "-g1"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2a

    .line 696
    const/4 v7, 0x0

    .line 697
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-g1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 705
    :cond_2a
    sput v11, Lnet/sf/smc/Smc;->_debugLevel:I

    .line 706
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 709
    :cond_2b
    aget-object v9, p0, v5

    const-string v10, "-nos"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_2d

    .line 711
    const-string v9, "-nostreams"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 713
    const/4 v7, 0x0

    .line 714
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-nostreams"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 722
    :cond_2c
    sput-boolean v11, Lnet/sf/smc/Smc;->_nostreams:Z

    .line 723
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 726
    :cond_2d
    aget-object v9, p0, v5

    const-string v10, "-noe"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_2f

    .line 728
    const-string v9, "-noex"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 730
    const/4 v7, 0x0

    .line 731
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-noex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 739
    :cond_2e
    sput-boolean v11, Lnet/sf/smc/Smc;->_noex:Z

    .line 740
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 743
    :cond_2f
    aget-object v9, p0, v5

    const-string v10, "-noc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_31

    .line 745
    const-string v9, "-nocatch"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_30

    .line 747
    const/4 v7, 0x0

    .line 748
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-nocatch"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 756
    :cond_30
    sput-boolean v11, Lnet/sf/smc/Smc;->_nocatch:Z

    .line 757
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 760
    :cond_31
    aget-object v9, p0, v5

    const-string v10, "-ret"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_33

    .line 762
    const-string v9, "-return"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_32

    .line 764
    const/4 v7, 0x0

    .line 765
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-return"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 773
    :cond_32
    sput-boolean v11, Lnet/sf/smc/Smc;->_return:Z

    .line 774
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 777
    :cond_33
    aget-object v9, p0, v5

    const-string v10, "-ref"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_35

    .line 779
    const-string v9, "-reflect"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_34

    .line 781
    const/4 v7, 0x0

    .line 782
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-reflect"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 790
    :cond_34
    sput-boolean v11, Lnet/sf/smc/Smc;->_reflection:Z

    .line 791
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 794
    :cond_35
    aget-object v9, p0, v5

    const-string v10, "-ge"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_37

    .line 796
    const-string v9, "-generic"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_36

    .line 798
    const/4 v7, 0x0

    .line 799
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-generic"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 807
    :cond_36
    sput-boolean v11, Lnet/sf/smc/Smc;->_generic:Z

    .line 808
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 811
    :cond_37
    aget-object v9, p0, v5

    const-string v10, "-se"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_39

    .line 813
    const-string v9, "-serial"

    invoke-static {v9}, Lnet/sf/smc/Smc;->_supportsOption(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_38

    .line 815
    const/4 v7, 0x0

    .line 816
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lnet/sf/smc/Smc;->_targetLanguage:Lnet/sf/smc/Smc$Language;

    invoke-virtual {v10}, Lnet/sf/smc/Smc$Language;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-serial"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 824
    :cond_38
    sput-boolean v11, Lnet/sf/smc/Smc;->_serial:Z

    .line 825
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 828
    :cond_39
    aget-object v9, p0, v5

    const-string v10, "-verb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_3a

    .line 830
    sput-boolean v11, Lnet/sf/smc/Smc;->_verbose:Z

    .line 831
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 833
    :cond_3a
    aget-object v9, p0, v5

    const-string v10, "-vverb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_3b

    .line 835
    sput-boolean v11, Lnet/sf/smc/Smc;->_fsmVerbose:Z

    .line 836
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 840
    :cond_3b
    const/4 v7, 0x0

    .line 841
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown option ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto/16 :goto_2

    .line 849
    :cond_3c
    if-nez v4, :cond_3d

    if-ne v7, v11, :cond_3d

    .line 851
    array-length v9, p0

    if-ne v5, v9, :cond_3e

    .line 853
    const/4 v7, 0x0

    .line 854
    const-string v9, "Missing source file"

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    .line 916
    :cond_3d
    return v7

    .line 861
    :cond_3e
    :goto_3
    array-length v9, p0

    if-ge v5, v9, :cond_3d

    if-ne v7, v11, :cond_3d

    .line 864
    aget-object v9, p0, v5

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".sm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3f

    .line 867
    const/4 v7, 0x0

    .line 868
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Source file name must end in \".sm\" ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    .line 861
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 876
    :cond_3f
    new-instance v8, Ljava/io/File;

    aget-object v9, p0, v5

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 877
    .local v8, "sourceFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_40

    .line 879
    const/4 v7, 0x0

    .line 880
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No such file named \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto :goto_4

    .line 884
    :cond_40
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_41

    .line 886
    const/4 v7, 0x0

    .line 887
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Source file \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is not readable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lnet/sf/smc/Smc;->_errorMsg:Ljava/lang/String;

    goto :goto_4

    .line 897
    :cond_41
    aget-object v2, p0, v5

    .line 898
    .local v2, "fileName":Ljava/lang/String;
    sget-char v9, Ljava/io/File;->separatorChar:C

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_42

    .line 900
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, "fileSeparator":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 909
    .end local v3    # "fileSeparator":Ljava/lang/String;
    :cond_42
    sget-object v9, Lnet/sf/smc/Smc;->_sourceFileList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method
