.class public Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1479
    .local p3, "menu":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;>;"
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .line 1480
    const v0, 0x1090003

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 1482
    return-void
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .param p1, "whichButton"    # I

    .prologue
    .line 1485
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    .line 1486
    .local v0, "item":Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;
    invoke-virtual {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;->getCommand()I

    move-result v1

    return v1
.end method
