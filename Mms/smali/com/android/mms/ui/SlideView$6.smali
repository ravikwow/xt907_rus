.class Lcom/android/mms/ui/SlideView$6;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;

.field final synthetic val$spans:[Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;[Landroid/text/style/URLSpan;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideView$6;->val$spans:[Landroid/text/style/URLSpan;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 778
    if-ltz p2, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$6;->val$spans:[Landroid/text/style/URLSpan;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    .line 781
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 782
    return-void
.end method
