.class final Lcom/motorola/simmanager/PBCommunication$1;
.super Ljava/lang/Object;
.source "PBCommunication.java"

# interfaces
.implements Lcom/motorola/simmanager/PBCommunication$SimDetailCompare;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/PBCommunication;->isNumbersEqual(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p1, p2}, Lcom/motorola/simmanager/SMUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
