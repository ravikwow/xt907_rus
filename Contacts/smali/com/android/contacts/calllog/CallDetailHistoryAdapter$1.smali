.class Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallDetailHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallDetailHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallDetailHistoryAdapter;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;->this$0:Lcom/android/contacts/calllog/CallDetailHistoryAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;->this$0:Lcom/android/contacts/calllog/CallDetailHistoryAdapter;

    # getter for: Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->access$000(Lcom/android/contacts/calllog/CallDetailHistoryAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 60
    :cond_0
    return-void
.end method
