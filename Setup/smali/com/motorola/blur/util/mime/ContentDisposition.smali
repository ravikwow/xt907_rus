.class public Lcom/motorola/blur/util/mime/ContentDisposition;
.super Lcom/motorola/blur/util/mime/ParameterizedValue;
.source "ContentDisposition.java"


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final FILE_NAME:Ljava/lang/String; = "filename"

.field public static final INLINE:Ljava/lang/String; = "inline"

.field private static final PATTERN_CONTENT_DISPOSITION:Ljava/util/regex/Pattern;


# instance fields
.field private mDispositionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "([^;]+);?(.*)"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/mime/ContentDisposition;->PATTERN_CONTENT_DISPOSITION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/blur/util/mime/ParameterizedValue;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->setValue(Ljava/lang/String;)V

    .line 54
    sget-object v2, Lcom/motorola/blur/util/mime/ContentDisposition;->PATTERN_CONTENT_DISPOSITION:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 55
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/util/mime/ContentDisposition;->mDispositionType:Ljava/lang/String;

    .line 57
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "parameterList":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0, v1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->setParameters(Ljava/lang/String;)V

    .line 62
    .end local v1    # "parameterList":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;
    .param p2, "namesAndValues"    # [Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/motorola/blur/util/mime/ParameterizedValue;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/motorola/blur/util/mime/ContentDisposition;->mDispositionType:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p2}, Lcom/motorola/blur/util/mime/ParameterizedValue;->addParameters([Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected getBaseValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ContentDisposition;->mDispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ContentDisposition;->mDispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "filename"

    invoke-virtual {p0, v0}, Lcom/motorola/blur/util/mime/ParameterizedValue;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAttachement()Z
    .locals 2

    .prologue
    .line 89
    const-string v0, "attachment"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentDisposition;->mDispositionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 2

    .prologue
    .line 93
    const-string v0, "inline"

    iget-object v1, p0, Lcom/motorola/blur/util/mime/ContentDisposition;->mDispositionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDispositionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "dispositionType"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/motorola/blur/util/mime/ContentDisposition;->mDispositionType:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/ParameterizedValue;->setDirty()V

    .line 82
    return-void
.end method
