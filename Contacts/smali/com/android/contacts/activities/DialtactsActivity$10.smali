.class Lcom/android/contacts/activities/DialtactsActivity$10;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$10;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 673
    if-eqz p2, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$10;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V

    .line 676
    :cond_0
    return-void
.end method
