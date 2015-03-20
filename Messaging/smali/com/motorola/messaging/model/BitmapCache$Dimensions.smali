.class public Lcom/motorola/messaging/model/BitmapCache$Dimensions;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/model/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput v0, p0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    .line 698
    iput v0, p0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    .line 699
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput p1, p0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    .line 703
    iput p2, p0, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    .line 704
    return-void
.end method
