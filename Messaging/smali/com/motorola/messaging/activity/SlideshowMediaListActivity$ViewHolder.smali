.class Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;
.super Ljava/lang/Object;
.source "SlideshowMediaListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowMediaListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mediaIcon:Landroid/widget/ImageView;

.field mediaName:Landroid/widget/TextView;

.field mediaSize:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/activity/SlideshowMediaListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/activity/SlideshowMediaListActivity$1;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowMediaListActivity$ViewHolder;-><init>()V

    return-void
.end method
