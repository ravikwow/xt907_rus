.class final Lcom/motorola/blur/util/mime/Parameter$1;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/util/mime/Parameter;->parse(Ljava/lang/String;)Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/motorola/blur/util/mime/Parameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/motorola/blur/util/mime/Parameter;Lcom/motorola/blur/util/mime/Parameter;)I
    .locals 3
    .param p1, "o1"    # Lcom/motorola/blur/util/mime/Parameter;
    .param p2, "o2"    # Lcom/motorola/blur/util/mime/Parameter;

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/Parameter;->getOrder()I

    move-result v0

    .line 78
    .local v0, "v1":I
    invoke-virtual {p2}, Lcom/motorola/blur/util/mime/Parameter;->getOrder()I

    move-result v1

    .line 79
    .local v1, "v2":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Lcom/motorola/blur/util/mime/Parameter;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/motorola/blur/util/mime/Parameter;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/util/mime/Parameter$1;->compare(Lcom/motorola/blur/util/mime/Parameter;Lcom/motorola/blur/util/mime/Parameter;)I

    move-result v0

    return v0
.end method
