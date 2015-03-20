.class Lcom/motorola/messaging/activity/SlideshowEditActivity$15;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

.field final synthetic val$adapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$15;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$15;->val$adapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;

    iput-object p3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$15;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1430
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$15;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$15;->val$adapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;

    invoke-virtual {v1, p3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;->buttonToCommand(I)I

    move-result v1

    # invokes: Lcom/motorola/messaging/activity/SlideshowEditActivity;->addNewSlide(I)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$1200(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)V

    .line 1431
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1432
    return-void
.end method
