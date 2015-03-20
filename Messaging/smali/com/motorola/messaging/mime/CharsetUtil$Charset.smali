.class Lcom/motorola/messaging/mime/CharsetUtil$Charset;
.super Ljava/lang/Object;
.source "CharsetUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/mime/CharsetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Charset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/motorola/messaging/mime/CharsetUtil$Charset;",
        ">;"
    }
.end annotation


# instance fields
.field private aliases:[Ljava/lang/String;

.field private canonical:Ljava/lang/String;

.field private mime:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "canonical"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-object v0, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    .line 796
    iput-object v0, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->mime:Ljava/lang/String;

    .line 797
    iput-object v0, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    .line 800
    iput-object p1, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    .line 801
    iput-object p2, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->mime:Ljava/lang/String;

    .line 802
    iput-object p3, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    .line 803
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/motorola/messaging/mime/CharsetUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lcom/motorola/messaging/mime/CharsetUtil$1;

    .prologue
    .line 794
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/mime/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/mime/CharsetUtil$Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/mime/CharsetUtil$Charset;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/mime/CharsetUtil$Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/mime/CharsetUtil$Charset;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->mime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/mime/CharsetUtil$Charset;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/mime/CharsetUtil$Charset;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/motorola/messaging/mime/CharsetUtil$Charset;)I
    .locals 2
    .param p1, "c"    # Lcom/motorola/messaging/mime/CharsetUtil$Charset;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 794
    check-cast p1, Lcom/motorola/messaging/mime/CharsetUtil$Charset;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->compareTo(Lcom/motorola/messaging/mime/CharsetUtil$Charset;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 812
    instance-of v1, p1, Lcom/motorola/messaging/mime/CharsetUtil$Charset;

    if-eqz v1, :cond_0

    .line 813
    check-cast p1, Lcom/motorola/messaging/mime/CharsetUtil$Charset;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->compareTo(Lcom/motorola/messaging/mime/CharsetUtil$Charset;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 815
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/motorola/messaging/mime/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
