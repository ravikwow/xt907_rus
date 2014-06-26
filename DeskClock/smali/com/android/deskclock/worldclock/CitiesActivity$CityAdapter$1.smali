.class Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;
.super Landroid/widget/Filter;
.source "CitiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;


# direct methods
.method constructor <init>(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 25
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    new-instance v16, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v16 .. v16}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 143
    .local v16, "results":Landroid/widget/Filter$FilterResults;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, "modifiedQuery":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v9, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/worldclock/CityObj;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v17, "sectionHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v18, "sectionPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v21, v0

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;
    invoke-static/range {v21 .. v21}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->access$000(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)[Lcom/android/deskclock/worldclock/CityObj;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v21, v0

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;
    invoke-static/range {v21 .. v21}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->access$000(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)[Lcom/android/deskclock/worldclock/CityObj;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_0

    .line 152
    const-string v21, "+"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v21, Lcom/android/deskclock/worldclock/CityObj;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSelectedCitiesHeaderString:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$100(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSelectedCitiesHeaderString:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$100(Lcom/android/deskclock/worldclock/CitiesActivity;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lcom/android/deskclock/worldclock/CityObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v21, v0

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedCities:[Lcom/android/deskclock/worldclock/CityObj;
    invoke-static/range {v21 .. v21}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->access$000(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)[Lcom/android/deskclock/worldclock/CityObj;

    move-result-object v4

    .local v4, "arr$":[Lcom/android/deskclock/worldclock/CityObj;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v5, v4, v10

    .line 159
    .local v5, "city":Lcom/android/deskclock/worldclock/CityObj;
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 163
    .end local v4    # "arr$":[Lcom/android/deskclock/worldclock/CityObj;
    .end local v5    # "city":Lcom/android/deskclock/worldclock/CityObj;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    # setter for: Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSelectedEndPosition:I
    invoke-static/range {v21 .. v22}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->access$202(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;I)I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 166
    .local v7, "currentTime":J
    const/16 v20, 0x0

    .line 167
    .local v20, "val":Ljava/lang/String;
    const v14, -0x186a0

    .line 168
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v21, v0

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mCities:[Lcom/android/deskclock/worldclock/CityObj;
    invoke-static/range {v21 .. v21}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->access$300(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)[Lcom/android/deskclock/worldclock/CityObj;

    move-result-object v4

    .restart local v4    # "arr$":[Lcom/android/deskclock/worldclock/CityObj;
    array-length v11, v4

    .restart local v11    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v11, :cond_6

    aget-object v5, v4, v10

    .line 171
    .restart local v5    # "city":Lcom/android/deskclock/worldclock/CityObj;
    iget-object v0, v5, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "C0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 168
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 176
    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I
    invoke-static/range {v21 .. v21}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$400(Lcom/android/deskclock/worldclock/CitiesActivity;)I

    move-result v21

    if-nez v21, :cond_4

    iget-object v0, v5, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 183
    iget-object v0, v5, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    .line 184
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v21, Lcom/android/deskclock/worldclock/CityObj;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/deskclock/worldclock/CityObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSortType:I
    invoke-static/range {v21 .. v21}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$400(Lcom/android/deskclock/worldclock/CitiesActivity;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 192
    iget-object v0, v5, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    .line 193
    .local v19, "timezone":Ljava/util/TimeZone;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v13

    .line 194
    .local v13, "newOffset":I
    if-eq v14, v13, :cond_5

    .line 195
    move v14, v13

    .line 196
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->getGMTHourOffset(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v15

    .line 197
    .local v15, "offsetString":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v21, Lcom/android/deskclock/worldclock/CityObj;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Lcom/android/deskclock/worldclock/CityObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v13    # "newOffset":I
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v19    # "timezone":Ljava/util/TimeZone;
    :cond_5
    iget-object v0, v5, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "cityName":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/deskclock/worldclock/CityObj;->mCityId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 208
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 142
    .end local v4    # "arr$":[Lcom/android/deskclock/worldclock/CityObj;
    .end local v5    # "city":Lcom/android/deskclock/worldclock/CityObj;
    .end local v6    # "cityName":Ljava/lang/String;
    .end local v7    # "currentTime":J
    .end local v9    # "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/worldclock/CityObj;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "modifiedQuery":Ljava/lang/String;
    .end local v14    # "offset":I
    .end local v16    # "results":Landroid/widget/Filter$FilterResults;
    .end local v17    # "sectionHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "sectionPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 212
    .restart local v4    # "arr$":[Lcom/android/deskclock/worldclock/CityObj;
    .restart local v7    # "currentTime":J
    .restart local v9    # "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/worldclock/CityObj;>;"
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "modifiedQuery":Ljava/lang/String;
    .restart local v14    # "offset":I
    .restart local v16    # "results":Landroid/widget/Filter$FilterResults;
    .restart local v17    # "sectionHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "sectionPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "val":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    # setter for: Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->access$502(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;[Ljava/lang/String;)[Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/Integer;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    # setter for: Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mSectionPositions:[Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->access$602(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    .line 215
    move-object/from16 v0, v16

    iput-object v9, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 216
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    monitor-exit p0

    return-object v16
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    # setter for: Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->mDisplayedCitiesList:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->access$702(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;Ljava/util/List;)Ljava/util/List;

    .line 223
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mPosition:I
    invoke-static {v0}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$800(Lcom/android/deskclock/worldclock/CitiesActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mCitiesList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$900(Lcom/android/deskclock/worldclock/CitiesActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v1, v1, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    # getter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mPosition:I
    invoke-static {v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$800(Lcom/android/deskclock/worldclock/CitiesActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 225
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    iget-object v0, v0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    const/4 v1, -0x1

    # setter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mPosition:I
    invoke-static {v0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$802(Lcom/android/deskclock/worldclock/CitiesActivity;I)I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$1;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 228
    return-void
.end method
