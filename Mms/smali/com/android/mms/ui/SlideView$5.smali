.class Lcom/android/mms/ui/SlideView$5;
.super Landroid/widget/ArrayAdapter;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/text/style/URLSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;I[Landroid/text/style/URLSpan;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # [Landroid/text/style/URLSpan;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 740
    invoke-super/range {p0 .. p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 741
    .local v8, "v":Landroid/view/View;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "defaultCountryIso":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SlideView$5;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/style/URLSpan;

    .line 744
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    .line 745
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 746
    .local v6, "uri":Landroid/net/Uri;
    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 747
    .local v5, "tv":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/ui/SlideView;->access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v10, v11, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 749
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 750
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 751
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 752
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v1, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 754
    :cond_0
    const-string v4, "tel:"

    .line 755
    .local v4, "telPrefix":Ljava/lang/String;
    const-string v9, "tel:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 756
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 757
    :cond_1
    const-string v9, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 764
    :cond_2
    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .end local v4    # "telPrefix":Ljava/lang/String;
    .end local v5    # "tv":Landroid/widget/TextView;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 760
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "span":Landroid/text/style/URLSpan;
    .restart local v4    # "telPrefix":Ljava/lang/String;
    .restart local v5    # "tv":Landroid/widget/TextView;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_3
    const-string v9, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 765
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .end local v4    # "telPrefix":Ljava/lang/String;
    .end local v5    # "tv":Landroid/widget/TextView;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method
