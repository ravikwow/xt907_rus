.class Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->expandAlarm(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;Landroid/view/ViewTreeObserver;Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;)V
    .locals 0

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;->this$1:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 1402
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1403
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1405
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1406
    .local v1, "hairlineHeight":I
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->collapseExpandArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v2, v1

    .line 1408
    .local v0, "collapseHeight":I
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$15;->val$itemHolder:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;

    iget-object v2, v2, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter$ItemHolder;->hairLine:Landroid/view/View;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1409
    const/4 v2, 0x1

    return v2
.end method
