.class public Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    .line 142
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_0
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/android/contacts/dialpad/DialpadFragment;-><init>()V

    .line 153
    :goto_0
    return-object v0

    .line 151
    :pswitch_1
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/android/contacts/calllog/CallLogFragment;-><init>()V

    goto :goto_0

    .line 153
    :pswitch_2
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;-><init>()V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentPagerAdapter#setPrimaryItem(), position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 166
    return-void
.end method
