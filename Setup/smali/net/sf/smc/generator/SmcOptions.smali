.class public final Lnet/sf/smc/generator/SmcOptions;
.super Ljava/lang/Object;
.source "SmcOptions.java"


# instance fields
.field private final _accessLevel:Ljava/lang/String;

.field private final _castType:Ljava/lang/String;

.field private final _debugLevel:I

.field private final _genericFlag:Z

.field private final _graphLevel:I

.field private final _headerDirectory:Ljava/lang/String;

.field private final _noCatchFlag:Z

.field private final _noExceptionFlag:Z

.field private final _noStreamsFlag:Z

.field private final _reflectFlag:Z

.field private final _serialFlag:Z

.field private final _srcDirectory:Ljava/lang/String;

.field private final _srcfileBase:Ljava/lang/String;

.field private final _syncFlag:Z

.field private final _targetfileBase:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZZZZZZLjava/lang/String;)V
    .locals 0
    .param p1, "srcfileBase"    # Ljava/lang/String;
    .param p2, "targetfileBase"    # Ljava/lang/String;
    .param p3, "srcDirectory"    # Ljava/lang/String;
    .param p4, "headerDirectory"    # Ljava/lang/String;
    .param p5, "castType"    # Ljava/lang/String;
    .param p6, "graphLevel"    # I
    .param p7, "serialFlag"    # Z
    .param p8, "debugLevel"    # I
    .param p9, "noExceptionFlag"    # Z
    .param p10, "noCatchFlag"    # Z
    .param p11, "noStreamsFlag"    # Z
    .param p12, "reflectFlag"    # Z
    .param p13, "syncFlag"    # Z
    .param p14, "genericFlag"    # Z
    .param p15, "accessLevel"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lnet/sf/smc/generator/SmcOptions;->_srcfileBase:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lnet/sf/smc/generator/SmcOptions;->_targetfileBase:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lnet/sf/smc/generator/SmcOptions;->_headerDirectory:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lnet/sf/smc/generator/SmcOptions;->_castType:Ljava/lang/String;

    .line 107
    iput p6, p0, Lnet/sf/smc/generator/SmcOptions;->_graphLevel:I

    .line 108
    iput-object p3, p0, Lnet/sf/smc/generator/SmcOptions;->_srcDirectory:Ljava/lang/String;

    .line 109
    iput-boolean p7, p0, Lnet/sf/smc/generator/SmcOptions;->_serialFlag:Z

    .line 110
    iput p8, p0, Lnet/sf/smc/generator/SmcOptions;->_debugLevel:I

    .line 111
    iput-boolean p9, p0, Lnet/sf/smc/generator/SmcOptions;->_noExceptionFlag:Z

    .line 112
    iput-boolean p10, p0, Lnet/sf/smc/generator/SmcOptions;->_noCatchFlag:Z

    .line 113
    iput-boolean p11, p0, Lnet/sf/smc/generator/SmcOptions;->_noStreamsFlag:Z

    .line 114
    iput-boolean p12, p0, Lnet/sf/smc/generator/SmcOptions;->_reflectFlag:Z

    .line 115
    iput-boolean p13, p0, Lnet/sf/smc/generator/SmcOptions;->_syncFlag:Z

    .line 116
    iput-boolean p14, p0, Lnet/sf/smc/generator/SmcOptions;->_genericFlag:Z

    .line 117
    iput-object p15, p0, Lnet/sf/smc/generator/SmcOptions;->_accessLevel:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public accessLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lnet/sf/smc/generator/SmcOptions;->_accessLevel:Ljava/lang/String;

    return-object v0
.end method

.method public castType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lnet/sf/smc/generator/SmcOptions;->_castType:Ljava/lang/String;

    return-object v0
.end method

.method public debugLevel()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lnet/sf/smc/generator/SmcOptions;->_debugLevel:I

    return v0
.end method

.method public genericFlag()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lnet/sf/smc/generator/SmcOptions;->_genericFlag:Z

    return v0
.end method

.method public graphLevel()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lnet/sf/smc/generator/SmcOptions;->_graphLevel:I

    return v0
.end method

.method public headerDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnet/sf/smc/generator/SmcOptions;->_headerDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public noCatchFlag()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lnet/sf/smc/generator/SmcOptions;->_noCatchFlag:Z

    return v0
.end method

.method public noExceptionFlag()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lnet/sf/smc/generator/SmcOptions;->_noExceptionFlag:Z

    return v0
.end method

.method public noStreamsFlag()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lnet/sf/smc/generator/SmcOptions;->_noStreamsFlag:Z

    return v0
.end method

.method public reflectFlag()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lnet/sf/smc/generator/SmcOptions;->_reflectFlag:Z

    return v0
.end method

.method public serialFlag()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lnet/sf/smc/generator/SmcOptions;->_serialFlag:Z

    return v0
.end method

.method public srcDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lnet/sf/smc/generator/SmcOptions;->_srcDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public srcfileBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lnet/sf/smc/generator/SmcOptions;->_srcfileBase:Ljava/lang/String;

    return-object v0
.end method

.method public syncFlag()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lnet/sf/smc/generator/SmcOptions;->_syncFlag:Z

    return v0
.end method

.method public targetfileBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lnet/sf/smc/generator/SmcOptions;->_targetfileBase:Ljava/lang/String;

    return-object v0
.end method
