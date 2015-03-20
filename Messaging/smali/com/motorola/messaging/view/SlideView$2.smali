.class Lcom/motorola/messaging/view/SlideView$2;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/SlideView;->createMainViews(Lcom/motorola/messaging/model/SlideModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/SlideView;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/SlideView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/motorola/messaging/view/SlideView$2;->this$0:Lcom/motorola/messaging/view/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$2;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$800(Lcom/motorola/messaging/view/SlideView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    return-void
.end method
