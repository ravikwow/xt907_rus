.class public Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;
.super Ljava/lang/Object;
.source "ListAccelerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/widget/ListAccelerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field mStarted:Z

.field final synthetic this$0:Lcom/motorola/contacts/widget/ListAccelerator;


# direct methods
.method public constructor <init>(Lcom/motorola/contacts/widget/ListAccelerator;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->this$0:Lcom/motorola/contacts/widget/ListAccelerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xff

    .line 1080
    iget-boolean v3, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    if-nez v3, :cond_0

    .line 1081
    const/16 v0, 0xff

    .line 1091
    :goto_0
    return v0

    .line 1084
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1085
    .local v1, "now":J
    iget-wide v3, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1086
    const/4 v0, 0x0

    .local v0, "alpha":I
    goto :goto_0

    .line 1088
    .end local v0    # "alpha":I
    :cond_1
    iget-wide v3, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0    # "alpha":I
    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1095
    iget-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    if-nez v2, :cond_0

    .line 1096
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->startFade()V

    .line 1097
    iget-object v2, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->this$0:Lcom/motorola/contacts/widget/ListAccelerator;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->getAlpha()I

    move-result v2

    if-lez v2, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->this$0:Lcom/motorola/contacts/widget/ListAccelerator;

    # getter for: Lcom/motorola/contacts/widget/ListAccelerator;->mThumbY:I
    invoke-static {v2}, Lcom/motorola/contacts/widget/ListAccelerator;->access$000(Lcom/motorola/contacts/widget/ListAccelerator;)I

    move-result v1

    .line 1102
    .local v1, "y":I
    iget-object v2, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->this$0:Lcom/motorola/contacts/widget/ListAccelerator;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1103
    .local v0, "viewWidth":I
    iget-object v2, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->this$0:Lcom/motorola/contacts/widget/ListAccelerator;

    iget-object v3, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->this$0:Lcom/motorola/contacts/widget/ListAccelerator;

    # getter for: Lcom/motorola/contacts/widget/ListAccelerator;->mThumbW:I
    invoke-static {v3}, Lcom/motorola/contacts/widget/ListAccelerator;->access$100(Lcom/motorola/contacts/widget/ListAccelerator;)I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->this$0:Lcom/motorola/contacts/widget/ListAccelerator;

    # getter for: Lcom/motorola/contacts/widget/ListAccelerator;->mThumbH:I
    invoke-static {v4}, Lcom/motorola/contacts/widget/ListAccelerator;->access$200(Lcom/motorola/contacts/widget/ListAccelerator;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 1108
    .end local v0    # "viewWidth":I
    .end local v1    # "y":I
    :goto_0
    return-void

    .line 1105
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    .line 1106
    iget-object v2, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->this$0:Lcom/motorola/contacts/widget/ListAccelerator;

    # invokes: Lcom/motorola/contacts/widget/ListAccelerator;->removeThumb()V
    invoke-static {v2}, Lcom/motorola/contacts/widget/ListAccelerator;->access$300(Lcom/motorola/contacts/widget/ListAccelerator;)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 1074
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mFadeDuration:J

    .line 1075
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStartTime:J

    .line 1076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/widget/ListAccelerator$ScrollFade;->mStarted:Z

    .line 1077
    return-void
.end method
