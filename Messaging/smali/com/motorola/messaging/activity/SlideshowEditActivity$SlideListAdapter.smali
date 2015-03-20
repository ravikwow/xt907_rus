.class Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/motorola/messaging/model/SlideModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field private final mSmilModel:Lcom/motorola/messaging/model/SmilModel;

.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/content/Context;ILcom/motorola/messaging/model/SmilModel;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "smilModel"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .line 953
    invoke-virtual {p4}, Lcom/motorola/messaging/model/SmilModel;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 955
    iput p3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->mResource:I

    .line 956
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 957
    iput-object p4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 958
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;I)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "resource"    # I

    .prologue
    .line 968
    if-nez p2, :cond_0

    .line 969
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/view/SlideListItemView;

    .line 979
    .local v0, "slideListItemView":Lcom/motorola/messaging/view/SlideListItemView;
    :goto_0
    const v2, 0x7f09005f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 980
    .local v1, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2, p1}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/view/SlideListItemView;->fillFromSlide(Lcom/motorola/messaging/model/SlideModel;)V

    .line 985
    return-object v0

    .end local v0    # "slideListItemView":Lcom/motorola/messaging/view/SlideListItemView;
    .end local v1    # "text":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 973
    check-cast v0, Lcom/motorola/messaging/view/SlideListItemView;

    .line 974
    .restart local v0    # "slideListItemView":Lcom/motorola/messaging/view/SlideListItemView;
    invoke-virtual {v0}, Lcom/motorola/messaging/view/SlideListItemView;->clean()V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 962
    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->mResource:I

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->createViewFromResource(ILandroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 991
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 992
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    # invokes: Lcom/motorola/messaging/activity/SlideshowEditActivity;->setFocusAndSelectionOnList()V
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$300(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    .line 993
    return-void
.end method
