.class Lcom/android/systemui/statusbar/BaseStatusBar$4$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$4;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

.field final synthetic val$packageNameF:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$4;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$packageNameF:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0c00ad

    if-ne v1, v2, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->val$packageNameF:Ljava/lang/String;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$100(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 327
    const/4 v0, 0x1

    :cond_0
    return v0
.end method
