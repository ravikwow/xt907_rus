.class Lcom/motorola/blur/privacy/LegalReaderActivity$1;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/LegalReaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/LegalReaderActivity;I)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    iput p2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 183
    iget-object v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    const v3, 0x7f0c0031

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 184
    .local v1, "scrollView":Landroid/widget/ScrollView;
    iget-object v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    iget-object v2, v2, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$1;->val$offset:I

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 185
    .local v0, "line":I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    iget-object v3, v3, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 186
    return-void
.end method
