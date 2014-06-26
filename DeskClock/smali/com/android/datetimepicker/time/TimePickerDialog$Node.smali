.class Lcom/android/datetimepicker/time/TimePickerDialog$Node;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/time/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/datetimepicker/time/TimePickerDialog$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I

.field final synthetic this$0:Lcom/android/datetimepicker/time/TimePickerDialog;


# direct methods
.method public varargs constructor <init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V
    .locals 1
    .param p2, "legalKeys"    # [I

    .prologue
    .line 946
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput-object p2, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    .line 949
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V
    .locals 1
    .param p1, "child"    # Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    return-void
.end method

.method public canReach(I)Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 965
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 973
    :goto_0
    return-object v0

    .line 968
    :cond_0
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .line 969
    .local v0, "child":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "child":Lcom/android/datetimepicker/time/TimePickerDialog$Node;
    :cond_2
    move-object v0, v2

    .line 973
    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 956
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 958
    const/4 v1, 0x1

    .line 961
    :goto_1
    return v1

    .line 956
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
