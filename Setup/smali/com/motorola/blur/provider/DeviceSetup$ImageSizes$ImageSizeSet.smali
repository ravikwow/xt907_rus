.class public final Lcom/motorola/blur/provider/DeviceSetup$ImageSizes$ImageSizeSet;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup$ImageSizes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageSizeSet"
.end annotation


# static fields
.field public static final LIST_IDX:I = 0x0

.field public static final MENU_IDX:I = 0x1

.field public static final SIZE:I = 0x4

.field public static final STATUS_IDX:I = 0x2

.field public static final SUFFIXES:[Ljava/lang/String;

.field public static final THUMB_IDX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_list.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_menu.png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_status.png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_thumb.png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$ImageSizes$ImageSizeSet;->SUFFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
