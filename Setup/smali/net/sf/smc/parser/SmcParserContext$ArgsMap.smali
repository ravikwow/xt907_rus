.class abstract Lnet/sf/smc/parser/SmcParserContext$ArgsMap;
.super Ljava/lang/Object;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArgsMap"
.end annotation


# static fields
.field private static final Default:Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Default;

.field public static final Error:Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Error;

.field public static final NextArg:Lnet/sf/smc/parser/SmcParserContext$ArgsMap_NextArg;

.field public static final Start:Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9657
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Start;

    const-string v1, "ArgsMap.Start"

    const/16 v2, 0x3f

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Start;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ArgsMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Start;

    .line 9659
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_NextArg;

    const-string v1, "ArgsMap.NextArg"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_NextArg;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ArgsMap;->NextArg:Lnet/sf/smc/parser/SmcParserContext$ArgsMap_NextArg;

    .line 9661
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Error;

    const-string v1, "ArgsMap.Error"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Error;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ArgsMap;->Error:Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Error;

    .line 9663
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Default;

    const-string v1, "ArgsMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ArgsMap;->Default:Lnet/sf/smc/parser/SmcParserContext$ArgsMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
