.class Lcom/motorola/messaging/activity/SlideshowEditActivity$1;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$1;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$1;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # invokes: Lcom/motorola/messaging/activity/SlideshowEditActivity;->commitSmilModelChanges()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$000(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    .line 236
    return-void
.end method
