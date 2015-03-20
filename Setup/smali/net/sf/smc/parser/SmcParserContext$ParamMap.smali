.class abstract Lnet/sf/smc/parser/SmcParserContext$ParamMap;
.super Ljava/lang/Object;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ParamMap"
.end annotation


# static fields
.field private static final Default:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default;

.field public static final Dollar:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Dollar;

.field public static final Error:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Error;

.field public static final NextParam:Lnet/sf/smc/parser/SmcParserContext$ParamMap_NextParam;

.field public static final ParamSeparator:Lnet/sf/smc/parser/SmcParserContext$ParamMap_ParamSeparator;

.field public static final ParamType:Lnet/sf/smc/parser/SmcParserContext$ParamMap_ParamType;

.field public static final Start:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Start;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8080
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Start;

    const-string v1, "ParamMap.Start"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Start;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Start;

    .line 8082
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Dollar;

    const-string v1, "ParamMap.Dollar"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Dollar;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap;->Dollar:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Dollar;

    .line 8084
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap_ParamSeparator;

    const-string v1, "ParamMap.ParamSeparator"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_ParamSeparator;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap;->ParamSeparator:Lnet/sf/smc/parser/SmcParserContext$ParamMap_ParamSeparator;

    .line 8086
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap_ParamType;

    const-string v1, "ParamMap.ParamType"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_ParamType;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap;->ParamType:Lnet/sf/smc/parser/SmcParserContext$ParamMap_ParamType;

    .line 8088
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap_NextParam;

    const-string v1, "ParamMap.NextParam"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_NextParam;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap;->NextParam:Lnet/sf/smc/parser/SmcParserContext$ParamMap_NextParam;

    .line 8090
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Error;

    const-string v1, "ParamMap.Error"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Error;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap;->Error:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Error;

    .line 8092
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default;

    const-string v1, "ParamMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParamMap;->Default:Lnet/sf/smc/parser/SmcParserContext$ParamMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
