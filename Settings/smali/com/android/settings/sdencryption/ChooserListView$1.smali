.class Lcom/android/settings/sdencryption/ChooserListView$1;
.super Ljava/lang/Object;
.source "ChooserListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/ChooserListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/ChooserListView;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/ChooserListView;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/sdencryption/ChooserListView$1;->this$0:Lcom/android/settings/sdencryption/ChooserListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView$1;->this$0:Lcom/android/settings/sdencryption/ChooserListView;

    iget-object v0, v0, Lcom/android/settings/sdencryption/ChooserListView;->mApp:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/settings/sdencryption/ChooserListView$1;->this$0:Lcom/android/settings/sdencryption/ChooserListView;

    iget-object v0, v0, Lcom/android/settings/sdencryption/ChooserListView;->mApp:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 31
    :cond_0
    return-void
.end method
